import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:alan/proto/cosmos/tx/v1beta1/tx.pb.dart' as alan;
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:starport_template/model/denom_trace_mode.dart';
import 'package:starport_template/model/pool_list_model.dart';
import 'package:starport_template/model/pool_params_model.dart';
import 'package:starport_template/model/tx_model.dart';
import 'package:starport_template/utils/base_env.dart';
import 'package:starport_template/utils/pretty_json.dart';
import 'package:tendermint_liquidity/proto/tendermint.liquidity.v1beta1/export.dart'
    as liquidity;
import 'package:transaction_signing_gateway/model/wallet_lookup_key.dart';
import 'package:transaction_signing_gateway/transaction_signing_gateway.dart';

//// The module enables you to create a liquidity pool with a pair of coins,
/// deposit reserve coins into the pool to provide liquidity, request withdrawal
/// from the pool, and trade coins using the liquidity pool.
/// https://github.com/tendermint/liquidity/tree/develop/x/liquidity/spec

class LiquidityPool {
  LiquidityPool(this.transactionSigningGateway, this.baseEnv);

  TransactionSigningGateway transactionSigningGateway;
  BaseEnv baseEnv;

  Future<void> swapTokens(
    WalletPublicInfo info,
    String password,
    Function(String) onResult,
  ) async {
    final unsignedTransaction = UnsignedAlanTransaction(
      messages: [
        liquidity.MsgSwapWithinBatch(
          swapRequesterAddress: info.publicAddress,
          poolId: Int64(14),
          swapTypeId: 1,
          offerCoin: liquidity.Coin(
            denom: 'uphoton',
            amount: '1000',
          ),
          demandCoinDenom:
              'ibc/070B20BE0D1576B9AFBF54428BDF092B26B0D43B84D0EF1E779CBE8240000355',
          offerCoinFee: liquidity.Coin(
            denom: 'uphoton',
            amount: '150',
          ),
          orderPrice: '1000',
        ),
      ],
    );

    final walletLookupKey = WalletLookupKey(
      walletId: info.walletId,
      chainId: 'cosmoshub-testnet',
      password: password,
    );

    final result = await transactionSigningGateway.signTransaction(
      transaction: unsignedTransaction,
      walletLookupKey: walletLookupKey,
    );

    result.fold(
      (l) => print(l),
      (r) async {
        try {
          final bytes = base64Encode(
            (r as SignedAlanTransaction).signedTransaction.writeToBuffer(),
          );

          final uri =
              'https://api.testnet.cosmos.network:443/cosmos/tx/v1beta1/txs';
          final requestPayload = {
            'jsonrpc': '2.0',
            'method': 'broadcast_tx_commit',
            'params': {'tx': bytes},
            'id': '1',
          };

          final response = await http.post(
            Uri.parse('https://rpc.testnet.cosmos.network:443'),
            headers: {'Content-Type': 'application/json'},
            body: json.encode(requestPayload),
          );
          final prettyJson = jsonPretty(response.body);

          onResult(prettyJson);
          print(prettyJson);
        } catch (e) {
          print(e.toString());
        }
      },
    );
    /*     
    result.fold(
      (fail) => throw fail as Object,
      (hash) => debugPrint('new TX hash: ${hash.txHash}'),
    ); */
  }

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
  Future<Amount> getPoolSupply(poolId) async {
    final uri = '${baseEnv.baseApiUrl}/cosmos/bank/v1beta1/supply/$poolId';
    final response = await http.get(Uri.parse(uri));
    final map = jsonDecode(response.body) as Map<String, dynamic>;

    return Amount.fromJson(map['amount']);
  }

  /// Get token supply
  Stream<List<Amount>> getSupply() async* {
    final uri = '${baseEnv.baseApiUrl}/cosmos/bank/v1beta1/supply';
    final response = await http.get(Uri.parse(uri));

    final map = jsonDecode(response.body) as Map<String, dynamic>;

    if (map['supply'] == null) {
      yield [];
    }

    final list = (map['supply'] as List<dynamic>).map(
      (e) => Amount.fromJson(e as Map<String, dynamic>),
    );

    var finalList = <Amount>[];

    for (var item in list) {
      final ibc = await getTokenNameFromDenom(item.denom);
      finalList.add(item.copyWith(
        denom: ibc.denomTrace.baseDenom,
        ibc: item.denom,
      ));
      yield finalList;
    }
  }

  /// Get liquidity params
  Future<DenomTraceModel> getTokenNameFromDenom(String ibc) async {
    if (ibc == 'uphoton') {
      return DenomTraceModel(
        denomTrace: DenomTrace(
          baseDenom: 'uphoton',
          path: '',
        ),
      );
    }

    if (ibc.toLowerCase().contains('pool')) {
      return getTokenNameFromPoolDenom(ibc);
    }

    final uri =
        '${baseEnv.baseApiUrl}/ibc/applications/transfer/v1beta1/denom_traces/${ibc.split('/').last}';
    final response = await http.get(Uri.parse(uri));
    return DenomTraceModel.fromJson(response.body);
  }

  /// Get liquidity params
  Future<DenomTraceModel> getTokenNameFromPoolDenom(String ibc) async {
    final uri =
        '${baseEnv.baseApiUrl}/cosmos/liquidity/v1beta1/pools/pool_coin_denom/$ibc';
    final response = await http.get(Uri.parse(uri));
    final map = jsonDecode(response.body) as Map<String, dynamic>;

    final list = map['pool']['reserve_coin_denoms'] as List<dynamic>;

    var temp = [];
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
