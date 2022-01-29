import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:starport_template/model/tx_model.dart';

class BalanceCardList extends StatelessWidget {
  const BalanceCardList({
    required this.balancesList,
    this.onTapItem,
    Key? key,
  }) : super(key: key);

  final List<TxCoin> balancesList;
  final Function(TxCoin)? onTapItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: balancesList
          .map(
            (balance) => Column(
              children: [
                CosmosBalanceCard(
                  denomText: balance.denom.toUpperCase(),
                  amountDisplayText: balance.amountFormatted,
                  secondaryText: 'available ${balance.denom}',
                  onTap: onTapItem == null ? null : () => onTapItem!(balance),
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
      ..add(IterableProperty<TxCoin>('balancesList', balancesList));
  }
}
