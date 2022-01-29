import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:starport_template/model/tx_model.dart';

class TokenCardList extends StatelessWidget {
  const TokenCardList({
    required this.tokenList,
    this.onTapItem,
    Key? key,
  }) : super(key: key);

  final List<TxCoin> tokenList;
  final Function(TxCoin)? onTapItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: tokenList
          .where((e) => !e.denom.contains('•'))
          .map(
            (token) => Column(
              children: [
                CosmosBalanceCard(
                  denomText: token.denom.toUpperCase(),
                  amountDisplayText: token.amountFormatted,
                  secondaryText: 'Market Cap',
                  onTap: onTapItem == null ? null : () => onTapItem!(token),
                ),
                SizedBox(height: CosmosTheme.of(context).spacingL),
                SizedBox(height: CosmosTheme.of(context).spacingM),
              ],
            ),
          )
          .toList(),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          ObjectFlagProperty<Function(TxCoin p1)?>.has('onTapItem', onTapItem))
      ..add(IterableProperty<TxCoin>('tokenList', tokenList));
  }
}
