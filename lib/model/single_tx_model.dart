// To parse this JSON data, do
//
//     final txModel = txModelFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:starport_template/model/tx_model.dart';

class SingleTxModel with EquatableMixin {
  SingleTxModel({
    required this.tx,
    required this.txResponse,
  });

  final Tx? tx;
  final TxResponse? txResponse;

  SingleTxModel copyWith({
    Tx? tx,
    TxResponse? txResponse,
  }) {
    return SingleTxModel(
      tx: tx ?? this.tx,
      txResponse: txResponse ?? this.txResponse,
    );
  }

  factory SingleTxModel.fromRawJson(String str) =>
      SingleTxModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SingleTxModel.fromJson(Map<String, dynamic> json) => SingleTxModel(
        tx: json["tx"] != null ? Tx.fromJson(json["tx"]) : null,
        txResponse: json["tx"] != null
            ? TxResponse.fromJson(json["tx_response"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "tx": tx?.toJson(),
        "tx_response": txResponse?.toJson(),
      };

  factory SingleTxModel.fromMap(Map<String, dynamic> map) {
    return SingleTxModel(
      tx: Tx.fromJson(map['tx']),
      txResponse: TxResponse.fromJson(map['tx_response']),
    );
  }

  @override
  String toString() => 'SingleTxModel(tx: $tx, tx_response: $txResponse)';

  @override
  List<Object> get props => [tx ?? '', txResponse ?? ''];
}
