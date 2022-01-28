import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:starport_template/model/pool_list_model.dart';
import 'package:starport_template/pages/pool/widgets/cosmos_pool_card.dart';
import 'package:starport_template/starport_app.dart';
import 'package:starport_template/utils/amount_validator.dart';
import 'package:starport_template/widgets/send_money_form.dart';
import 'package:starport_template/widgets/touchable_opacity.dart';

import '../pool/widgets/cosmos_pool_app_bar.dart';

class SwapAssetPage extends StatefulWidget {
  const SwapAssetPage({
    required this.pool,
    Key? key,
  }) : super(key: key);

  final Pool pool;

  @override
  State<SwapAssetPage> createState() => _SwapAssetPageState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Pool>('pool', pool));
  }
}

class _SwapAssetPageState extends State<SwapAssetPage> {
  double amount = 0;
  double fee = StarportApp.walletsStore.defaultFee;
  String walletAddress = '';

  bool get isTransferValidated =>
      amount != 0.0 && walletAddress.isNotEmpty && fee != 0.0;

  @override
  Widget build(BuildContext context) {
    final theme = CosmosTheme.of(context);
    return Scaffold(
      body: ListView(
        children: [
          CosmosPoolAppBar(
            leading: const CosmosBackButton(),
            title: 'Swap Tokens',
          ),
          SizedBox(height: theme.spacingXL),
          CosmosPoolCard(
            id: widget.pool.id,
            denomText: widget.pool.reserve_coin_denoms.first,
            amountDisplayText: NumberFormat.currency(symbol: r'$')
                .format(widget.pool.liquidity),
            secondaryText: 'available ',
            isListTileType: true,
          ),
          SizedBox(height: theme.spacingXXL),
          SendMoneyForm(
            onAddressChanged: (value) {
              walletAddress = value;
              setState(() {});
            },
            onAmountChanged: (value) {
              amount = validateAmount(value);
              setState(() {});
            },
            denomText: widget.pool.reserve_coin_denoms.first,
          ),
          SizedBox(height: theme.spacingXL),
          _customFee(theme),
          SizedBox(height: theme.spacingXXXL),
          _footerButton(theme),
          MinimalBottomSpacer(padding: theme.spacingXL)
        ],
      ),
    );
  }

  Widget _customFee(CosmosThemeData theme) {
    return TouchableOpacity(
      onTap: _onTapFee,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: theme.spacingL),
        child: Row(
          children: [
            Text('Fees', style: CosmosTextTheme.copy0Normal),
            const Spacer(),
            //Text('${fee.toString()} ${widget.balance.denom}'),
            Image.asset('assets/images/arrow_right.png'),
          ],
        ),
      ),
    );
  }

  Future<void> _onTapFee() async {
    /*   fee = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CustomFeePage(
                denomText: widget.balance.denom.text, initialFee: fee),
          ),
        ) as double? ??
        0.0;
    setState(() {}); */
  }

  SafeArea _footerButton(CosmosThemeData theme) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spacingL),
              child: CosmosElevatedButton(
                text: 'Continue',
                onTap: isTransferValidated ? _onTapContinue : null,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onTapContinue() {
    /*   Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignTransactionPage(
          transaction: MsgSendTransaction(
            amount: Amount.fromString(amount.toString()),
            fee: fee,
            recipient: walletAddress,
          ),
          balance: widget.balance,
        ),
      ),
    ); */
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DoubleProperty('amount', amount))
      ..add(StringProperty('walletAddress', walletAddress))
      ..add(
          DiagnosticsProperty<bool>('isTransferValidated', isTransferValidated))
      ..add(DoubleProperty('fee', fee));
  }
}
