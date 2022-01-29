import 'dart:async';

import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:starport_template/entities/msg_send_swap_transaction.dart';
import 'package:starport_template/model/tx_model.dart';

import 'package:starport_template/pages/assets_portfolio_page.dart';
import 'package:starport_template/pages/passcode_prompt_page.dart';
import 'package:starport_template/pages/swap/widgets/gradient_text_avatar.dart';
import 'package:starport_template/starport_app.dart';
import 'package:starport_template/widgets/assets_transfer_sheet.dart';
import 'package:starport_template/widgets/sign_transaction_tab_view_item.dart';

class SignSwapTransactionPage extends StatefulWidget {
  const SignSwapTransactionPage({
    required this.transaction,
    Key? key,
  }) : super(key: key);

  final MsgSendSwapTransaction transaction;
  @override
  State<SignSwapTransactionPage> createState() =>
      _SignSwapTransactionPageState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<MsgSendSwapTransaction>(
        'transaction',
        transaction,
      ),
    );
  }
}

class _SignSwapTransactionPageState extends State<SignSwapTransactionPage> {
  double get recipientGetsAmount =>
      widget.transaction.demandCoin.amountInDouble;

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
          SignSwapTransactionItem(
            text: 'You Swap',
            coin: widget.transaction.offerCoin.copyWith(),
          ),
          SizedBox(height: theme.spacingL),
          const CosmosDivider(),
          SizedBox(height: theme.spacingL),
          SignSwapTransactionItem(
            text: 'You will get',
            coin: widget.transaction.demandCoin.copyWith(
              amount: '$recipientGetsAmount',
            ),
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

    await StarportApp.liquidityStore.swapTokens(
      info: StarportApp.walletsStore.selectedWallet,
      password: password,
      transaction: widget.transaction.copyWith(
        onResult: (_) {
          if (mounted) {
            _showAssetsTransferSheet(context, recipientGetsAmount);
          }
        },
      ),
    );
  }

  void _showAssetsTransferSheet(
      BuildContext context, double recipientGetsAmount) {
    showMaterialModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height / 2.24,
        child: AssetsTransferSheet(
          recipientGetsAmount: widget.transaction.offerCoin.copyWith(
            amount: recipientGetsAmount.toString(),
          ),
          onTapDone: () => Navigator.of(context).popUntil((v) => v.isFirst),
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
            '${widget.transaction.offerCoinFeeAmount.toString()} ${widget.transaction.offerCoin.denom.toUpperCase()}',
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
        DiagnosticsProperty<MsgSendSwapTransaction>(
          'transaction',
          widget.transaction,
        ),
      )
      ..add(DoubleProperty('recipientGetsAmount', recipientGetsAmount));
  }
}

class SignSwapTransactionItem extends StatelessWidget {
  const SignSwapTransactionItem({
    Key? key,
    required this.coin,
    required this.text,
  }) : super(key: key);

  final TxCoin coin;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(20),
        Text(
          text,
          style: CosmosTextTheme.title1Medium,
        ),
        const Gap(10),
        Container(
          height: 20,
          child: GradientTextAvatar(
            stringKey: coin.denom,
          ),
        ),
        Text(
          coin.denom.toUpperCase(),
          style: CosmosTextTheme.titleS,
        ),
        const Gap(10),
        Text(
          coin.amountFormatted,
          style: CosmosTextTheme.titleS,
        ),
      ],
    );
  }
}
