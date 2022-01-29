import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:starport_template/model/tx_model.dart';
import 'package:starport_template/utils/base_env.dart';

class CosmosBalances {
  CosmosBalances(this.baseEnv);

  BaseEnv baseEnv;

  Future<List<TxCoin>> getBalances(String walletAddress) async {
    final uri =
        '${baseEnv.baseApiUrl}/cosmos/bank/v1beta1/balances/$walletAddress';
    final response = await http.get(Uri.parse(uri));
    final map = jsonDecode(response.body) as Map<String, dynamic>;

    if (map['balances'] == null) {
      return [];
    }

    final list = map['balances'] as List<dynamic>;

    return list
        .map(
          (e) => TxCoin.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }
}
