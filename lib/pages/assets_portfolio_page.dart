import 'package:collection/collection.dart';
import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:starport_template/model/pool_list_model.dart';
import 'package:starport_template/model/pool_params_model.dart';
import 'package:starport_template/model/tx_model.dart';
import 'package:starport_template/pages/pool/select_pool_page.dart';
import 'package:starport_template/pages/pool/widgets/token_card_list.dart';
import 'package:starport_template/pages/swap/swap_page.dart';
import 'package:starport_template/widgets/touchable_opacity.dart';
import 'package:transaction_signing_gateway/model/wallet_public_info.dart';

import 'package:starport_template/pages/select_asset_page.dart';
import 'package:starport_template/pages/transaction_history_page.dart';
import 'package:starport_template/starport_app.dart';
import 'package:starport_template/widgets/asset_portfolio_heading.dart';
import 'package:starport_template/widgets/balance_card_list.dart';
import 'package:starport_template/widgets/receive_money_sheet.dart';
import 'package:starport_template/widgets/starport_button_bar.dart';
import 'package:starport_template/widgets/wallets_list_sheet.dart';

class AssetsPortfolioPage extends StatefulWidget {
  const AssetsPortfolioPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AssetsPortfolioPage> createState() => _AssetsPortfolioPageState();
}

class _AssetsPortfolioPageState extends State<AssetsPortfolioPage> {
  List<TxCoin> get balancesList => StarportApp.walletsStore.balancesList;

  ObservableList<Pool> get poolsList => StarportApp.liquidityStore.poolsList;

  PoolParamsModel get poolParams => StarportApp.liquidityStore.poolParams;

  bool get isSupplyListLoading =>
      StarportApp.liquidityStore.isSupplyListParamsLoading;

  bool get isBalancesLoading => StarportApp.walletsStore.isBalancesLoading;

  bool get isSendMoneyLoading => StarportApp.walletsStore.isSendMoneyLoading;

  bool get isError => StarportApp.walletsStore.isBalancesLoadingError;

  bool get isSupplyListLoadingError =>
      StarportApp.liquidityStore.isSupplyListParamsError;

  WalletPublicInfo get selectedWallet =>
      StarportApp.walletsStore.selectedWallet;

  @override
  void initState() {
    super.initState();
    _fetchWalletData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: StreamBuilder<List<TxCoin>>(
              stream: StarportApp.liquidityStore.supplyList.stream,
              builder: (context, supplSnapShot) {
                final tokenList = supplSnapShot.data ?? [];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _gradientAvatar(context),
                    AssetPortfolioHeading(
                      title: selectedWallet.name,
                      onTap: _onTapDropDown,
                    ),
                    SizedBox(height: CosmosTheme.of(context).spacingL),
                    Flexible(
                      child: ListView(
                        addAutomaticKeepAlives: true,
                        cacheExtent: 100000,
                        children: [
                          const Divider(),
                          SizedBox(height: CosmosTheme.of(context).spacingL),
                          SizedBox(height: CosmosTheme.of(context).spacingM),
                          Observer(
                            builder: (context) => ContentStateSwitcher(
                              contentChild:
                                  BalanceCardList(balancesList: balancesList),
                              isLoading: isBalancesLoading,
                              isError: isError,
                              errorChild: const Center(
                                child: Text('An unexpected error occurred'),
                              ),
                            ),
                          ),
                          SizedBox(height: CosmosTheme.of(context).spacingM),
                          Padding(
                            padding: EdgeInsets.only(
                              left: CosmosTheme.of(context).spacingL,
                              right: CosmosTheme.of(context).spacingL,
                              top: CosmosTheme.of(context).spacingM,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Tokens',
                                  style: TextStyle(
                                      fontSize:
                                          CosmosTheme.of(context).fontSizeXL,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                    width: CosmosTheme.of(context).spacingL),
                                Spacer(),
                                CosmosTextButton(
                                  text: 'Pools ↻',
                                  height: 40,
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => SelectPoolPage(
                                          poolsList: poolsList,
                                          poolParams: poolParams,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                CosmosTextButton(
                                  text: 'Swap ⮃',
                                  height: 40,
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return SwapPage(
                                            balancesList: balancesList
                                                .where((e) =>
                                                    !e.denom.contains('•'))
                                                .map(
                                              (e) {
                                                final val = balancesList
                                                    .firstWhereOrNull((k) {
                                                  return e.denom == k.denom ||
                                                      e.ibc == k.ibc;
                                                });
                                                return e.copyWith(
                                                  amount: val != null
                                                      ? val.amount
                                                      : '0',
                                                );
                                              },
                                            ).toList(),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: CosmosTheme.of(context).spacingM),
                          const Divider(),
                          SizedBox(height: CosmosTheme.of(context).spacingL),
                          SizedBox(height: CosmosTheme.of(context).spacingM),
                          Observer(
                            builder: (context) => ContentStateSwitcher(
                              contentChild: TokenCardList(tokenList: tokenList),
                              isLoading: isSupplyListLoading ||
                                  supplSnapShot.hasData == false,
                              isError: isError,
                              errorChild: const Center(
                                child: Text('An unexpected error occurred'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    StarportButtonBar(
                      onReceivePressed: _onTapReceive,
                      onSendPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SelectAssetPage(
                              balancesList: balancesList,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }

  Widget _gradientAvatar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(CosmosTheme.of(context).spacingL),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 35,
          child: TouchableOpacity(
            onTap: () => _onTapAvatar(context),
            child: GradientAvatar(stringKey: selectedWallet.publicAddress),
          ),
        ),
      ),
    );
  }

  void _onTapAvatar(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const TransactionHistoryPage()),
      );

  void _fetchWalletData() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      await StarportApp.walletsStore.getBalances(selectedWallet.publicAddress);
      await StarportApp.liquidityStore.getPoolData();
    });
  }

  Future<void> _onTapDropDown() async {
    final wallet = await showMaterialModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height / 1.06,
        child: const WalletsListSheet(),
      ),
    ) as WalletPublicInfo?;

    if (wallet != null) {
      StarportApp.walletsStore.selectWallet(wallet);
    }
  }

  void _onTapReceive() {
    showMaterialModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height / 1.06,
        child: ReceiveMoneySheet(
          walletInfo: StarportApp.walletsStore.selectedWallet,
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<WalletPublicInfo>(
          'selectedWallet',
          selectedWallet,
        ),
      )
      ..add(DiagnosticsProperty<bool>('isBalancesLoading', isBalancesLoading))
      ..add(DiagnosticsProperty<bool>('isSendMoneyLoading', isSendMoneyLoading))
      ..add(IterableProperty<TxCoin>('balancesList', balancesList))
      ..add(IterableProperty<Pool>('poolsList', poolsList))
      ..add(DiagnosticsProperty<bool>('isError', isError));
  }
}
