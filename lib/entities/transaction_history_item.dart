import 'package:starport_template/model/tx_model.dart';

enum TransactionType { receive, send, swap }

class TransactionHistoryItem {
  TransactionHistoryItem({
    required this.amount,
    required this.date,
    required this.type,
    required this.typeRaw,
  });

  final TransactionType type;
  final String typeRaw;
  final DateTime date;
  final List<TxCoin?> amount;

  String get transactionType {
    var replaceAll = typeRaw.split('.').last.replaceAll('Msg', '');

    if (replaceAll == 'Send' && type == TransactionType.receive) {
      replaceAll = 'Receive';
    }
    return replaceAll;
  }
}
