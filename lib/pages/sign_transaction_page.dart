import 'dart:async';

import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:starport_template/entities/msg_send_transaction.dart';
import 'package:starport_template/model/tx_model.dart';
import 'package:starport_template/pages/assets_portfolio_page.dart';
import 'package:starport_template/pages/passcode_prompt_page.dart';
import 'package:starport_template/starport_app.dart';
import 'package:starport_template/widgets/assets_transfer_sheet.dart';
import 'package:starport_template/widgets/sign_transaction_tab_view_item.dart';

class SignTransactionPage extends StatefulWidget {
  const SignTransactionPage({
    required this.transaction,
    required this.coin,
    Key? key,
  }) : super(key: key);

  final MsgSendTransaction transaction;
  final TxCoin coin;

  @override
  State<SignTransactionPage> createState() => _SignTransactionPageState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<TxCoin>('coin', coin))
      ..add(
          DiagnosticsProperty<MsgSendTransaction>('transaction', transaction));
  }
}

class _SignTransactionPageState extends State<SignTransactionPage> {
  double get recipientGetsAmount =>
      widget.transaction.amount.value.toDouble() - widget.transaction.fee;

  @override
  Widget build(BuildContext context) {
    final theme = CosmosTheme.of(context);
    return Scaffold(
      appBar: const CosmosAppBar(
        leading: CosmosBackButton(),
        title: 'Sign Transaction',
      ),
      body: Column(
        children: [
          SizedBox(height: theme.spacingXXL),
          const CosmosDivider(),
          SizedBox(height: theme.spacingL),
          SignTransactionTabViewItem(
            text: 'Send',
            amount: widget.transaction.amount.value.toDouble(),
            coin: widget.coin,
          ),
          SizedBox(height: theme.spacingL),
          const CosmosDivider(),
          SizedBox(height: theme.spacingL),
          SignTransactionTabViewItem(
            text: 'Recipient will get',
            amount: recipientGetsAmount,
            coin: widget.coin,
          ),
          SizedBox(height: theme.spacingL),
          const CosmosDivider(),
          SizedBox(height: theme.spacingL),
          _transactionFee(theme),
          const Spacer(),
          _footerButton(theme, context),
          MinimalBottomSpacer(padding: theme.spacingXXL)
        ],
      ),
    );
  }

  SafeArea _footerButton(CosmosThemeData theme, BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: theme.spacingL),
        child: Row(
          children: [
            Expanded(
              child: CosmosElevatedButton(
                text: 'Tap to sign',
                prefixIcon: Image.asset('assets/images/face_id.png'),
                onTap: () => _onTapSign(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onTapSign(BuildContext context) async {
    final password = await PasswordPromptPage.promptPassword(context);
    if (password == null) {
      return;
    }
    unawaited(
      StarportApp.walletsStore.sendTokens(
        info: StarportApp.walletsStore.selectedWallet,
        coin: widget.coin.copyWith(
          amount: widget.transaction.amount.toString(),
        ),
        toAddress: widget.transaction.recipient,
        password: password,
      ),
    );
    if (mounted) {
      _showAssetsTransferSheet(context, recipientGetsAmount);
    }
  }

  void _showAssetsTransferSheet(
      BuildContext context, double recipientGetsAmount) {
    showMaterialModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height / 2.24,
        child: AssetsTransferSheet(
          recipientGetsAmount: widget.coin.copyWith(
            amount: recipientGetsAmount.toString(),
          ),
          onTapDone: () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const AssetsPortfolioPage()),
            (route) => false,
          ),
        ),
      ),
    );
  }

  Padding _transactionFee(CosmosThemeData theme) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: theme.spacingL),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Transaction fee', style: CosmosTextTheme.titleS),
          Text(
            '${widget.transaction.fee.toString()} ${widget.coin.denom.toUpperCase()}',
            style: CosmosTextTheme.copyMinus1Normal,
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<MsgSendTransaction>(
          'transaction',
          widget.transaction,
        ),
      )
      ..add(DoubleProperty('recipientGetsAmount', recipientGetsAmount))
      ..add(DiagnosticsProperty<TxCoin>('balance', widget.coin));
  }
}
