import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobx/mobx.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:starport_template/entities/msg_send_swap_transaction.dart';
import 'package:starport_template/extensions/extensions.dart';

import 'package:starport_template/model/pool_list_model.dart';
import 'package:starport_template/model/tx_model.dart';
import 'package:starport_template/pages/passcode_prompt_page.dart';
import 'package:starport_template/pages/pool/widgets/cosmos_pool_app_bar.dart';
import 'package:starport_template/pages/swap/widgets/gradient_text_avatar.dart';
import 'package:starport_template/pages/swap/widgets/cosmos_picker.dart';
import 'package:starport_template/pages/swap/widgets/sign_transaction_page.dart';
import 'package:starport_template/starport_app.dart';
import 'package:collection/collection.dart';
import 'package:starport_template/widgets/touchable_opacity.dart';

class SwapPage extends StatefulWidget {
  const SwapPage({
    Key? key,
    required this.balancesList,
  }) : super(key: key);

  final List<TxCoin> balancesList;

  @override
  State<SwapPage> createState() => _SwapPageState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<TxCoin>('balancesList', balancesList));
  }
}

class _SwapPageState extends State<SwapPage> {
  final offerController = TextEditingController();
  final demandController = TextEditingController();
  final currencyTextInputFormatter = CurrencyTextInputFormatter(
    decimalDigits: 3,
    symbol: '',
  );
  ObservableList<Pool> get poolsList => StarportApp.liquidityStore.poolsList;

  TxCoin? _offerCoin;
  TxCoin? get offerCoin => _offerCoin;
  set offerCoin(TxCoin? val) {
    setState(() => _offerCoin = val);
  }

  TxCoin? _demandCoin;
  TxCoin? get demandCoin => _demandCoin;
  set demandCoin(TxCoin? val) {
    setState(() => _demandCoin = val);
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool val) {
    setState(() => _isLoading = val);
  }

  bool _insufficentFunds = false;
  bool get insufficentFunds => _insufficentFunds;
  set insufficentFunds(bool val) {
    setState(() => _insufficentFunds = val);
  }

  bool get buttonEnabled =>
      !insufficentFunds && offerCoin != null && demandCoin != null;

  @override
  Widget build(BuildContext context) {
    final theme = CosmosTheme.of(context);

    return Scaffold(
      body: ListView(
        children: [
          CosmosPoolAppBar(
            leading: const CosmosBackButton(),
            title: 'Swap',
          ),
          SizedBox(height: theme.spacingM),
          Container(
            height: 400,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 200,
                  color: Colors.black12,
                  spreadRadius: 0.2,
                )
              ],
            ),
            child: isLoading
                ? CircularProgressIndicator(
                    color: CosmosTheme.of(context).colors.text,
                  )
                : Column(
                    children: [
                      const Spacer(),
                      TouchableOpacity(
                        onTap: () async {
                          var _selectedToken = await CosmosPicker<TxCoin>(
                            context: context,
                            items: widget.balancesList.where(
                                (value) => value.denom != demandCoin?.denom),
                            title: 'Pay With',
                            itemBuilder: (item) =>
                                CosmosPickerItemBuilder(item),
                          ).show();
                          if (_selectedToken != null) {
                            offerCoin = _selectedToken;
                          }
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              child: GradientTextAvatar(
                                stringKey: offerCoin?.denom ?? '',
                              ),
                            ),
                            const Gap(10),
                            Text(
                              offerCoin?.denom.toUpperCase() ?? 'Select Token',
                              style: CosmosTextTheme.title1Medium,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 4),
                      TextField(
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                        controller: offerController,
                        onChanged: (val) {
                          var amount = offerController.text
                              .replaceAll(',', '')
                              .parseDouble();

                          insufficentFunds =
                              amount > (offerCoin?.amountInDouble ?? 0);
                          if (amount == 0 || offerController.text.isEmpty) {
                            demandController.clear();
                            return;
                          }
                          demandController.text = currencyTextInputFormatter
                              .format((amount * 1.3).toStringAsFixed(3));
                        },
                        inputFormatters: [currencyTextInputFormatter],
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          hintText: '0',
                          suffixText: offerCoin != null
                              ? 'Bal. ${offerCoin?.amountFormatted ?? '0'}'
                              : '',
                          suffixStyle: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Spacer(flex: 6),
                      const Divider(),
                      const Spacer(flex: 6),
                      TouchableOpacity(
                        onTap: () async {
                          var _selectedToken = await CosmosPicker<TxCoin>(
                            context: context,
                            items: widget.balancesList
                                .where(
                                  (value) => value.denom != offerCoin?.denom,
                                )
                                .toList(),
                            title: 'Receive',
                            itemBuilder: (item) =>
                                CosmosPickerItemBuilder(item),
                          ).show();

                          if (_selectedToken != null) {
                            demandCoin = _selectedToken;
                          }
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              child: GradientTextAvatar(
                                stringKey: demandCoin?.denom ?? '',
                              ),
                            ),
                            const Gap(10),
                            Text(
                              demandCoin?.denom.toUpperCase() ?? 'Select Token',
                              style: CosmosTextTheme.title1Medium,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 4),
                      TextField(
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                        onChanged: (val) {},
                        enabled: false,
                        controller: demandController,
                        inputFormatters: [
                          CurrencyTextInputFormatter(
                            decimalDigits: 3,
                            symbol: '',
                          )
                        ],
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          hintText: '0',
                          suffixText: demandCoin != null
                              ? 'Bal. ${demandCoin?.amountFormatted ?? '0'}'
                              : '',
                          border: InputBorder.none,
                          suffixStyle: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Spacer(flex: 6),
                      Container(
                        width: double.infinity,
                        child: IgnorePointer(
                          ignoring: buttonEnabled == false,
                          child: AnimatedOpacity(
                            opacity: buttonEnabled ? 1 : 0.6,
                            duration: const Duration(milliseconds: 300),
                            child: CosmosElevatedButton(
                              height: 58,
                              onTap: _handleOnReviewTap,
                              text: insufficentFunds
                                  ? 'Insufficent Funds'
                                  : 'Review',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          )
        ],
      ),
    );
  }

  void _handleOnReviewTap() async {
    final pool = poolsList.firstWhereOrNull((e) {
      return e.reserve_coin_denoms.contains(
        (offerCoin!.ibc ?? offerCoin!.denom),
      );
    });

    if (pool == null) {
      return showCosmosAlertDialog(
        context: context,
        dialogBuilder: (context) => CosmosAlertDialog(
          title: 'No Pool Found',
          message: 'There is no pool for this selected token',
          actions: [
            CosmosModalAction(
              text:
                  'Create Pool for ${offerCoin?.denom ?? ''}/${demandCoin?.denom ?? ''} ',
              onPressed: () => Navigator.of(context).pop(),
            ),
            CosmosModalAction(
              text: 'Cancel',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      );
    }

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignSwapTransactionPage(
          transaction: MsgSendSwapTransaction(
            offerCoinFeeAmount: 150,
            offerCoin: offerCoin!
                .copyWith(amount: '1000'),
            demandCoin: demandCoin!.copyWith(
              amount: (demandController.text.replaceAll(',', '').parseDouble() *
                      1.3)
                  .toStringAsFixed(3),
            ),
          
            orderPrice: 10000,
            poolId: (14),
            swapTypeId: pool.type_id,
            onResult: (SingleTxModel) {
              
            },
          ),
        ),
      ),
    );
  }
}

class CosmosPickerItemBuilder extends StatelessWidget {
  final TxCoin item;
  const CosmosPickerItemBuilder(
    this.item, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            child: GradientTextAvatar(
              stringKey: item.denom,
            ),
          ),
          const Gap(8),
          Text(
            item.denom.toUpperCase(),
            style: CosmosTextTheme.title1Medium,
          ),
        ],
      ),
    );
  }
}
