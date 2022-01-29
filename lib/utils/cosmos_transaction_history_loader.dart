import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:starport_template/entities/transaction_history_item.dart';
import 'package:starport_template/model/tx_model.dart';
import 'package:starport_template/utils/base_env.dart';

class CosmosTransactionHistoryLoader {
  CosmosTransactionHistoryLoader(this.baseEnv);

  BaseEnv baseEnv;

  Future<List<TransactionHistoryItem>> getTransactionHistory(
    String walletAddress,
  ) async {
    final outGoingTransactions =
        await _getTransactionResponses(walletAddress, TransactionType.send);
    final incomingTransactions =
        await _getTransactionResponses(walletAddress, TransactionType.receive);

    final list = [...outGoingTransactions, ...incomingTransactions] //
      ..sort((a, b) => b.date.compareTo(a.date));

    return list;
  }

  Future<List<TransactionHistoryItem>> _getTransactionResponses(
    String walletAddress,
    TransactionType type,
  ) async {
    final uri =
        '${baseEnv.baseApiUrl}/cosmos/tx/v1beta1/txs?events=transfer.${type == TransactionType.send ? 'sender' : 'recipient'}%3D%27$walletAddress%27';
    final response = await http.get(Uri.parse(uri));
    final map = jsonDecode(response.body) as Map<String, dynamic>;

    if (map['tx_responses'] == null) {
      return [];
    }

    final list = TxModel.fromJson(map).txResponses;

    return list.map(
      (e) {
        final model = e.tx.body.messages.first;

        List<TxCoin?> amount = [
          ...?model.amount ?? model.depositCoins,
          model.offerCoin,
          model.offerCoinFee,
          TxCoin(
            amount: model.packet?.destination_channel ?? '',
            denom: model.packet?.data ?? '',
            ibc: '',
          )
        ];

        var typeRaw = model.type;
        return TransactionHistoryItem(
          amount: amount,
          date: e.timestamp,
          type: type,
          typeRaw: typeRaw,
        );
      },
    ).toList();
  }
}
