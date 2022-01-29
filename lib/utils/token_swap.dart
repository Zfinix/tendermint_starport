import 'dart:convert';

import 'package:cosmos_utils/cosmos_utils.dart';
import 'package:fixnum/fixnum.dart';
import 'package:http/http.dart' as http;
import 'package:starport_template/entities/msg_send_swap_transaction.dart';
import 'package:starport_template/model/denom_trace_mode.dart';
import 'package:starport_template/model/pool_list_model.dart';
import 'package:starport_template/model/pool_params_model.dart';
import 'package:starport_template/model/single_tx_model.dart';
import 'package:starport_template/model/tx_model.dart';
import 'package:starport_template/utils/base_env.dart';
import 'package:starport_template/utils/transaction_signer.dart';
import 'package:tendermint_liquidity/proto/tendermint.liquidity.v1beta1/export.dart'
    as liquidity;
import 'package:transaction_signing_gateway/transaction_signing_gateway.dart';

//// The module enables you to create a liquidity pool with a pair of coins,
/// deposit reserve coins into the pool to provide liquidity, request withdrawal
/// from the pool, and trade coins using the liquidity pool.
/// https://github.com/tendermint/liquidity/tree/develop/x/liquidity/spec

class LiquidityPool {
  LiquidityPool(this.transactionSigningGateway, this.baseEnv);

  TransactionSigningGateway transactionSigningGateway;
  BaseEnv baseEnv;

  /// Send a deposit token request to the blockchain
  Future<void> depositTokens(
    WalletPublicInfo info,
    String password,
    List<TxCoin> depositCoins,
    int poolId,
    Function(SingleTxModel) onResult,
  ) async {
    /// Generate an `UnsignedAlanTransaction`
    final unsignedTransaction = UnsignedAlanTransaction(
      messages: [
        liquidity.MsgDepositWithinBatch(
          depositorAddress: info.publicAddress,
          poolId: Int64(poolId),
          depositCoins: depositCoins.map(
            (it) => liquidity.Coin(
              amount: it.amount,
              denom: it.ibc ?? it.denom,
            ),
          ),
        ),
      ],
    );

    /// Sign and broadcast transaction
    final result = await StarportTransactionSigner.signAndBroadcastTransaction(
      info: info,
      password: password,
      unsignedTransaction: unsignedTransaction,
      transactionSigningGateway: transactionSigningGateway,
    );

    result.fold(
      (fail) => throw fail,
      (hash) async {
        debugLog('new TX hash: ${hash.txHash}');

        /// Get and return Transaction Hash
        final req = await getTransactionByHash(hash.txHash);
        onResult(req);
      },
    );
  }

  /// Send a withdraw token request to the blockchain
  Future<void> withdrawTokens(
    WalletPublicInfo info,
    String password,
    TxCoin poolCoin,
    int poolId,
    Function(SingleTxModel) onResult,
  ) async {
    /// Generate an `UnsignedAlanTransaction`
    final unsignedTransaction = UnsignedAlanTransaction(
      messages: [
        liquidity.MsgWithdrawWithinBatch(
          withdrawerAddress: info.publicAddress,
          poolId: Int64(poolId),
          poolCoin: liquidity.Coin(
            amount: poolCoin.amount,
            denom: poolCoin.ibc ?? poolCoin.denom,
          ),
        ),
      ],
    );

    /// Sign and broadcast transaction
    final result = await StarportTransactionSigner.signAndBroadcastTransaction(
      info: info,
      password: password,
      unsignedTransaction: unsignedTransaction,
      transactionSigningGateway: transactionSigningGateway,
    );

    result.fold(
      (fail) => throw fail,
      (hash) async {
        debugLog('new TX hash: ${hash.txHash}');

        /// Get and return Transaction Hash
        final req = await getTransactionByHash(hash.txHash);
        onResult(req);
      },
    );
  }

  /// Send a swap token request to the blockchain
  Future<void> swapTokens(
    WalletPublicInfo info,
    String password,
    MsgSendSwapTransaction tx,
  ) async {
    /// Generate an `UnsignedAlanTransaction`
    final unsignedTransaction = UnsignedAlanTransaction(
      messages: [
        liquidity.MsgSwapWithinBatch(
          swapRequesterAddress: info.publicAddress,
          poolId: Int64(tx.poolId),
          swapTypeId: tx.swapTypeId,
          offerCoin: liquidity.Coin(
            denom: tx.offerCoin.ibc ?? tx.offerCoin.denom,
            amount: tx.offerCoin.amount,
          ),
          demandCoinDenom: tx.demandCoin.ibc ?? tx.demandCoin.denom,
          offerCoinFee: liquidity.Coin(
            denom: tx.offerCoin.ibc ?? tx.offerCoin.denom,
            amount: '${tx.offerCoinFeeAmount}',
          ),
          orderPrice: '${tx.orderPrice}',
        ),
      ],
    );

    /// Sign and broadcast transaction
    final result = await StarportTransactionSigner.signAndBroadcastTransaction(
      info: info,
      password: password,
      unsignedTransaction: unsignedTransaction,
      transactionSigningGateway: transactionSigningGateway,
    );

    result.fold(
      (fail) => throw fail,
      (hash) async {
        debugLog('new TX hash: ${hash.txHash}');

        /// Get and return Transaction Hash
        final req = await getTransactionByHash(hash.txHash);
        tx.onResult(req);
      },
    );
  }

  /// Get Liquidity Pool List
  Future<SingleTxModel> getTransactionByHash(String hash) async {
    final uri = '${baseEnv.baseApiUrl}/cosmos/tx/v1beta1/txs/$hash';
    final response = await http.get(Uri.parse(uri));
    final map = jsonDecode(response.body) as Map<String, dynamic>;

    return SingleTxModel.fromJson(map);
  }

  /// Get Liquidity Pool List
  Future<List<Pool>> getLiquidityPoolList() async {
    final uri = '${baseEnv.baseApiUrl}/cosmos/liquidity/v1beta1/pools';
    final response = await http.get(Uri.parse(uri));
    final data = PoolListModel.fromJson(response.body);
    return data.pools;
  }

  /// Get liquidity params
  Future<PoolParamsModel> getLiquidityPoolParams() async {
    final uri = '${baseEnv.baseApiUrl}/cosmos/liquidity/v1beta1/params';
    final response = await http.get(Uri.parse(uri));
    return PoolParamsModel.fromJson(response.body);
  }

  /// Get liquidity params
  Future<TxCoin> getPoolSupply(poolId) async {
    final uri = '${baseEnv.baseApiUrl}/cosmos/bank/v1beta1/supply/$poolId';
    final response = await http.get(Uri.parse(uri));
    final map = jsonDecode(response.body) as Map<String, dynamic>;

    return TxCoin.fromJson(map['amount']);
  }

  /// Get Stream of token supply
  Stream<List<TxCoin>> getSupply() async* {
    final uri = '${baseEnv.baseApiUrl}/cosmos/bank/v1beta1/supply';
    final response = await http.get(Uri.parse(uri));

    final map = jsonDecode(response.body) as Map<String, dynamic>;

    if (map['supply'] == null) {
      yield [];
    }

    final list = (map['supply'] as List<dynamic>).map(
      (e) => TxCoin.fromJson(e as Map<String, dynamic>),
    );

    /// Iterate and get get the Get Token Name using the IBC Denom fror each item
    var finalList = <TxCoin>[];
    for (var item in list) {
      final ibc = await getTokenNameFromDenom(item.denom);
      finalList.add(item.copyWith(
        denom: ibc.denomTrace.baseDenom,
        ibc: item.denom,
      ));
      yield finalList.toSet().toList()
        ..sort(
          (a, b) => a.denom.compareTo(b.denom),
        );
    }
  }

  /// Get Token Name using the IBC Denom
  Future<DenomTraceModel> getTokenNameFromDenom(String ibc) async {
    /// Get Token Name using the poolId
    if (ibc.toLowerCase().contains('pool')) {
      return getTokenNameFromPoolDenom(ibc);
    }

    /// Get Token Name using the poolId
    if (ibc.contains('/')) {
      final uri =
          '${baseEnv.baseApiUrl}/ibc/applications/transfer/v1beta1/denom_traces/${ibc.split('/').last}';
      final response = await http.get(Uri.parse(uri));
      return DenomTraceModel.fromJson(response.body);
    }

    /// Return the ibc/denom if its neither
    return DenomTraceModel(
      denomTrace: DenomTrace(
        baseDenom: ibc,
        path: '',
      ),
    );
  }

  /// Get Token Name using the poolId
  Future<DenomTraceModel> getTokenNameFromPoolDenom(String poolId) async {
    final uri =
        '${baseEnv.baseApiUrl}/cosmos/liquidity/v1beta1/pools/pool_coin_denom/$poolId';
    final response = await http.get(Uri.parse(uri));

    final map = jsonDecode(response.body) as Map<String, dynamic>;
    final list = map['pool']['reserve_coin_denoms'] as List<dynamic>;

    var temp = [];

    /// Iterate and get get the Get Token Name using the IBC Denom fror each item
    for (var e in list) {
      temp.add(e.toLowerCase().contains('ibc')
          ? (await getTokenNameFromDenom(e)).denomTrace.baseDenom
          : e);
    }

    return DenomTraceModel(
      denomTrace: DenomTrace(
        baseDenom: temp.join(' • '),
        path: '',
      ),
    );
  }
}
