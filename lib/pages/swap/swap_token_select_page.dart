import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:starport_template/entities/balance.dart';
import 'package:starport_template/starport_app.dart';
import 'package:starport_template/widgets/balance_card_list.dart';

import '../pool/widgets/cosmos_pool_app_bar.dart';

class SwapTokenSelectPage extends StatefulWidget {
  const SwapTokenSelectPage({
    required this.balancesList,
    required this.onTapItem,
    required this.title,
    Key? key,
  }) : super(key: key);
  final List<Balance> balancesList;
  final String title;
  final Function(Balance)? onTapItem;

  @override
  State<SwapTokenSelectPage> createState() => _SwapTokenSelectPageState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IterableProperty<Balance>('balancesList', balancesList))
      ..add(
          ObjectFlagProperty<Function(Balance p1)?>.has('onTapItem', onTapItem))
      ..add(StringProperty('title', title));
  }
}

class _SwapTokenSelectPageState extends State<SwapTokenSelectPage> {
  double amount = 0;
  double fee = StarportApp.walletsStore.defaultFee;
  String walletAddress = '';

  bool get isTransferValidated =>
      amount != 0.0 && walletAddress.isNotEmpty && fee != 0.0;

  @override
  Widget build(BuildContext context) {
    final theme = CosmosTheme.of(context);
    return Scaffold(
      body: Column(
        children: [
          CosmosPoolAppBar(
            leading: const CosmosBackButton(),
            title: widget.title,
          ),
          SizedBox(height: theme.spacingXL),
          BalanceCardList(
            balancesList: widget.balancesList,
            onTapItem: widget.onTapItem,
          )
        ],
      ),
    );
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
