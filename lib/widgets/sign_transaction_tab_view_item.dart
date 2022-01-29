import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:starport_template/model/tx_model.dart';

class SignTransactionTabViewItem extends StatelessWidget {
  const SignTransactionTabViewItem({
    required this.text,
    required this.coin,
    required this.amount,
    Key? key,
  }) : super(key: key);

  final String text;
  final double amount;
  final TxCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = CosmosTheme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: theme.spacingL),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: CosmosTextTheme.titleS),
          const Spacer(),
          Text('${amount.toString()} ${coin.denom.toUpperCase()}',
              style: CosmosTextTheme.title1Medium),
          SizedBox(width: theme.spacingL),
          CosmosTokenAvatar(text: coin.denom),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<TxCoin>('coin', coin))
      ..add(DoubleProperty('amount', amount))
      ..add(StringProperty('text', text));
  }
}
