import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:starport_template/model/denom_trace_mode.dart';
import 'package:starport_template/model/pool_list_model.dart';
import 'package:starport_template/model/tx_model.dart';
import 'package:starport_template/pages/pool/widgets/cosmos_pool_card.dart';
import 'package:starport_template/starport_app.dart';

class PoolCardList extends StatelessWidget {
  const PoolCardList({
    required this.poolsList,
    this.onTapItem,
    Key? key,
  }) : super(key: key);

  final List<Pool> poolsList;
  final Function(Pool)? onTapItem;

  @override
  Widget build(BuildContext context) {
    return ListView(
      addAutomaticKeepAlives: true,
      cacheExtent: 100000,
      children: poolsList
          .map(
            (pool) => FutureBuilder<DenomTraceModel>(
                future: StarportApp.liquidityStore
                    .getTokenNameFromDenom(pool.reserve_coin_denoms.first),
                builder: (context, snapshot) {
                  var data = (snapshot.connectionState == ConnectionState.done
                          ? snapshot.data?.denomTrace.baseDenom ??
                              pool.reserve_coin_denoms.first
                                  .split('')
                                  .take(9)
                                  .join()
                          : '...')
                      .toUpperCase();

                  return Column(
                    children: [
                      FutureBuilder<TxCoin>(
                          future: StarportApp.liquidityStore
                              .getPoolSupply(pool.pool_coin_denom),
                          builder: (context, snapshot) {
                            var liquidity =
                                double.parse(snapshot.data?.amount ?? '0');

                            return CosmosPoolCard(
                              id: pool.id,
                              amountDisplayText:
                                  NumberFormat.currency(symbol: r'$')
                                      .format(liquidity),
                              denomText:
                                  "$data • ${pool.reserve_coin_denoms.last.toUpperCase()}",
                              onTap: onTapItem == null
                                  ? null
                                  : () => onTapItem!(
                                        pool.copyWith(
                                          liquidity: liquidity,
                                          reserve_coin_denoms: [
                                            "$data • ${pool.reserve_coin_denoms.last.toUpperCase()}"
                                          ],
                                        ),
                                      ),
                              isListTileType: true,
                            );
                          }),
                      SizedBox(height: CosmosTheme.of(context).spacingL),
                      SizedBox(height: CosmosTheme.of(context).spacingM),
                    ],
                  );
                }),
          )
          .toList(),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<Function(Pool p1)?>.has('onTapItem', onTapItem))
      ..add(IterableProperty<Pool>('poolsList', poolsList));
  }
}
