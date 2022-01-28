import 'dart:async';

import 'package:cosmos_utils/cosmos_utils.dart';
import 'package:flutter/material.dart' as widget;
import 'package:mobx/mobx.dart';
import 'package:starport_template/model/denom_trace_mode.dart';
import 'package:starport_template/model/pool_list_model.dart';
import 'package:starport_template/model/pool_params_model.dart';
import 'package:starport_template/model/tx_model.dart';
import 'package:starport_template/utils/base_env.dart';
import 'package:starport_template/utils/token_swap.dart';
import 'package:transaction_signing_gateway/transaction_signing_gateway.dart';

class LiquidityStore {
  LiquidityStore(this._transactionSigningGateway, this.baseEnv);
  final TransactionSigningGateway _transactionSigningGateway;

  final BaseEnv baseEnv;
  final Observable<bool> _isLiquidityPoolListLoading = Observable(false);
  final Observable<bool> _isLiquidityPoolListError = Observable(false);

  final ObservableList<Pool> poolsList = ObservableList();
  final Observable<bool> _isCreatePooLoading = Observable(false);
  final Observable<bool> _isSwapTokensError = Observable(false);

  final Observable<bool> _isPoolParamsLoading = Observable(false);
  final Observable<bool> _isPoolParamsError = Observable(false);
  final Observable<PoolParamsModel> _poolParams =
      Observable(PoolParamsModel.empty());

  final supplyList = StreamController<List<Amount>>.broadcast();
  final Observable<bool> _isSupplyListParamsLoading = Observable(false);
  final Observable<bool> _isSupplyListParamsError = Observable(false);

  bool get isLiquidityPoolListLoading => _isLiquidityPoolListLoading.value;
  set isLiquidityPoolListLoading(bool val) =>
      Action(() => _isLiquidityPoolListLoading.value = val)();

  bool get isLiquidityPoolListError => _isLiquidityPoolListError.value;
  set isLiquidityPoolListError(bool val) =>
      Action(() => _isLiquidityPoolListError.value = val)();

  bool get isCreatePooLoading => _isCreatePooLoading.value;
  set isCreatePooLoading(bool val) =>
      Action(() => _isCreatePooLoading.value = val)();

  bool get isSwapTokensError => _isSwapTokensError.value;
  set isSwapTokensError(bool val) =>
      Action(() => _isSwapTokensError.value = val)();

  PoolParamsModel get poolParams => _poolParams.value;
  set poolParams(PoolParamsModel val) =>
      Action(() => _poolParams.value = val)();

  bool get isPoolParamsLoading => _isPoolParamsLoading.value;
  set isPoolParamsLoading(bool val) =>
      Action(() => _isPoolParamsLoading.value = val)();

  bool get isPoolParamsError => _isPoolParamsError.value;
  set isPoolParamsError(bool val) =>
      Action(() => _isPoolParamsError.value = val)();

  bool get isSupplyListParamsLoading => _isSupplyListParamsLoading.value;
  set isSupplyListParamsLoading(bool val) =>
      Action(() => _isSupplyListParamsLoading.value = val)();

  bool get isSupplyListParamsError => _isSupplyListParamsError.value;
  set isSupplyListParamsError(bool val) =>
      Action(() => _isSupplyListParamsError.value = val)();

  Future<void> getPoolData() async {
    await Future.wait([
      getPoolParams(),
      getSupply(),
      getLiquidityPools(),
    ]);
  }

  Future<void> swapTokens({
    required WalletPublicInfo info,
    required String password,
    required Function(String) onResult,
  }) async {
    isCreatePooLoading = true;
    try {
      await LiquidityPool(_transactionSigningGateway, baseEnv).swapTokens(
        info,
        password,
        onResult,
      );
    } catch (ex, stack) {
      logError(ex, stack);
      isSwapTokensError = true;
    }
    isCreatePooLoading = false;
  }

  Future<DenomTraceModel> getTokenNameFromDenom(String ibc) async {
    return await LiquidityPool(_transactionSigningGateway, baseEnv)
        .getTokenNameFromDenom(ibc);
  }

  Future<Amount> getPoolSupply(String poolId) async {
    return await LiquidityPool(_transactionSigningGateway, baseEnv)
        .getPoolSupply(poolId);
  }

  Future<void> getSupply() async {
    isSupplyListParamsLoading = true;
    try {
      LiquidityPool(_transactionSigningGateway, baseEnv)
          .getSupply()
          .listen(supplyList.sink.add);
    } catch (ex, stack) {
      logError(ex, stack);
      isSupplyListParamsError = true;
    }
    isSupplyListParamsLoading = false;
  }

  Future<void> getLiquidityPools() async {
    isLiquidityPoolListLoading = true;
    try {
      poolsList
        ..clear()
        ..addAll(await LiquidityPool(_transactionSigningGateway, baseEnv)
            .getLiquidityPoolList());
    } catch (ex, stack) {
      logError(ex, stack);
      isLiquidityPoolListError = true;
    }
    isLiquidityPoolListLoading = false;
  }

  Future<void> getPoolParams() async {
    isPoolParamsLoading = true;
    try {
      poolParams = await LiquidityPool(_transactionSigningGateway, baseEnv)
          .getLiquidityPoolParams();
    } catch (ex, stack) {
      logError(ex, stack);
      isPoolParamsError = true;
    }
    isPoolParamsLoading = false;
  }
}
