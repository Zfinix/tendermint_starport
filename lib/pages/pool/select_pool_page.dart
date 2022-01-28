import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:starport_template/model/pool_list_model.dart';
import 'package:starport_template/model/pool_params_model.dart';
import 'package:starport_template/pages/pool/widgets/pool_card_list.dart';

import 'widgets/cosmos_pool_app_bar.dart';

class SelectPoolPage extends StatefulWidget {
  const SelectPoolPage({
    required this.poolsList,
    required this.poolParams,
    Key? key,
  }) : super(key: key);

  final List<Pool> poolsList;
  final PoolParamsModel poolParams;

  @override
  State<SelectPoolPage> createState() => _SelectPoolPageState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IterableProperty<Pool>('poolsList', poolsList))
      ..add(DiagnosticsProperty<PoolParamsModel>('poolParams', poolParams));
  }
}

class _SelectPoolPageState extends State<SelectPoolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CosmosPoolAppBar(
            leading: CosmosBackButton(),
            title: 'Token pairs',
            actions: [
              Text(
                'Swap fee rate: ${double.parse(widget.poolParams.params.swap_fee_rate)}',
                style: CosmosTextTheme.copyMinus1Normal,
              ),
              Text(
                'Pool creation fee rate: ${widget.poolParams.params.pool_creation_fee.first.amount} ${widget.poolParams.params.pool_creation_fee.first.denom}',
                style: CosmosTextTheme.copyMinus1Normal,
              ),
            ],
          ),
          Flexible(
            child: PoolCardList(
              poolsList: widget.poolsList,
              onTapItem: (pool) {
               /*  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SwapAssetPage(
                      pool: pool,
                    ),
                  ),
                ); */
              },
            ),
          ),
        ],
      ),
    );
  }
}
