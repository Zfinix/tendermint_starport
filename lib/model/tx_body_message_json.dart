import 'package:starport_template/model/amount_json.dart';

class TxBodyMessageJson {
  TxBodyMessageJson({
    required this.type,
    required this.fromAddress,
    required this.toAddress,
    required this.amount,
     this.offerCoin,
  });

  factory TxBodyMessageJson.fromJson(Map<String, dynamic> json) => TxBodyMessageJson(
        type: json['@type'] as String? ?? '',
        fromAddress: json['from_address'] as String? ?? '',
        toAddress: json['to_address'] as String? ?? '',
        offerCoin: json['offer_coin'] != null ? AmountJson.fromJson(json['offer_coin'] as Map<String, dynamic>): null,
        amount: (json['amount'] ?? json['deposit_coins'] ?? []).map((x) => AmountJson.fromJson(x as Map<String, dynamic>)).toList(),
      );

  String type;
  String fromAddress;
  String toAddress;
  AmountJson? offerCoin;
  List<AmountJson> amount;
}
