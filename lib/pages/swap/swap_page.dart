import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:starport_template/entities/balance.dart';
import 'package:starport_template/pages/passcode_prompt_page.dart';

import 'package:starport_template/pages/pool/widgets/cosmos_pool_app_bar.dart';
import 'package:starport_template/pages/swap/widgets/gradient_text_avatar.dart';
import 'package:starport_template/pages/swap/widgets/swap_picked_list.dart';
import 'package:starport_template/starport_app.dart';
import 'package:starport_template/widgets/touchable_opacity.dart';

class SwapPage extends StatefulWidget {
  const SwapPage({
    required this.balancesList,
    Key? key,
  }) : super(key: key);

  final List<Balance> balancesList;

  @override
  State<SwapPage> createState() => _SwapPageState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<Balance>('balancesList', balancesList));
  }
}

class _SwapPageState extends State<SwapPage> {
  Balance? payToken;
  Balance? receiveToken;

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
            child: Column(
              children: [
                const Spacer(),
                TouchableOpacity(
                  onTap: () async {
                    var _selectedToken = await CosmosPicker<Balance>(
                      context: context,
                      items: widget.balancesList
                          .where((value) => value.denom != receiveToken?.denom)
                          .toList(),
                      title: 'Pay With',
                      itemBuilder: (item) => CosmosPickerItemBuilder(item),
                    ).show();
                    if (_selectedToken != null) {
                      setState(() {
                        payToken = _selectedToken;
                      });
                    }
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        child: GradientTextAvatar(
                          stringKey: payToken?.denom.text ?? '',
                        ),
                      ),
                      const Gap(10),
                      Text(
                        payToken?.denom.toString() ?? 'Select Token',
                        style: CosmosTextTheme.labelL,
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
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      decimalDigits: 3,
                      symbol: '',
                    )
                  ],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    hintText: '0',
                    suffixText: '${payToken?.denom ?? ''}',
                    suffixStyle: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
                const Spacer(flex: 6),
                const Divider(),
                const Spacer(flex: 6),
                TouchableOpacity(
                  onTap: () async {
                    var _selectedToken = await CosmosPicker<Balance>(
                      context: context,
                      items: widget.balancesList
                          .where((value) => value.denom != payToken?.denom)
                          .toList(),
                      title: 'Receive',
                      itemBuilder: (item) => CosmosPickerItemBuilder(item),
                    ).show();

                    if (_selectedToken != null) {
                      setState(() {
                        receiveToken = _selectedToken;
                      });
                    }
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        child: GradientTextAvatar(
                          stringKey: receiveToken?.denom.text ?? '',
                        ),
                      ),
                      const Gap(10),
                      Text(
                        receiveToken?.denom.toString() ?? 'Select Token',
                        style: CosmosTextTheme.labelL,
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
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      decimalDigits: 3,
                      symbol: '',
                    )
                  ],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: '0',
                    suffixText: '${receiveToken?.denom ?? ''}',
                    border: InputBorder.none,
                    suffixStyle: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
                const Spacer(flex: 6),
                Container(
                  width: double.infinity,
                  child: CosmosElevatedButton(
                    height: 58,
                    onTap: () async {
                      final password =
                          await PasswordPromptPage.promptPassword(context);
                      if (password == null) {
                        return;
                      }
                      StarportApp.liquidityStore.swapTokens(
                        info: StarportApp.walletsStore.selectedWallet,
                        password: password,
                        onResult: (response) {
                          showMaterialModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => SizedBox(
                              height: MediaQuery.of(context).size.height / 2.24,
                              child: CosmosBottomSheetContainer(
                                child: ListView(
                                  padding: EdgeInsets.all(10),
                                  children: [
                                    Text(response),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    text: 'Review',
                  ),
                ),
              ],
            ),
          )
          /*  BalanceCardList(
            balancesList: widget.balancesList
                .where((e) => !e.denom.text.contains('•'))
                .toList(),
            onTapItem: (token) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SwapAssetPage(
                    pool: pool,
                  ),
                ),
              );
            },
          ) */
        ],
      ),
    );
  }
}

class CosmosPickerItemBuilder extends StatelessWidget {
  final Balance item;
  const CosmosPickerItemBuilder(
    this.item, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            child: GradientTextAvatar(
              stringKey: item.denom.text,
            ),
          ),
          const Gap(8),
          Text(
            '${item.denom}',
            style: CosmosTextTheme.labelL,
          ),
        ],
      ),
    );
  }
}
