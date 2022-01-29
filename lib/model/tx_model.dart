// To parse this JSON data, do
//
//     final txModel = txModelFromJson(jsonString);

import 'dart:convert';

import 'package:cosmos_utils/amount_formatter.dart';
import 'package:equatable/equatable.dart';

import 'package:starport_template/extensions/extensions.dart';
import 'package:starport_template/model/tx_packet.dart';

class TxModel {
  TxModel({
    required this.txs,
    required this.txResponses,
    required this.pagination,
  });

  final List<Tx> txs;
  final List<TxResponse> txResponses;
  final Pagination pagination;

  TxModel copyWith({
    List<Tx>? txs,
    List<TxResponse>? txResponses,
    Pagination? pagination,
  }) =>
      TxModel(
        txs: txs ?? this.txs,
        txResponses: txResponses ?? this.txResponses,
        pagination: pagination ?? this.pagination,
      );

  factory TxModel.fromRawJson(String str) => TxModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TxModel.fromJson(Map<String, dynamic> json) => TxModel(
        txs: List<Tx>.from((json["txs"] ?? []).map((x) => Tx.fromJson(x))),
        txResponses: List<TxResponse>.from(
            (json["tx_responses"] ?? []).map((x) => TxResponse.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "txs": List<dynamic>.from(txs.map((x) => x.toJson())),
        "tx_responses": List<dynamic>.from(txResponses.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
      };
}

class Pagination {
  Pagination({
    required this.nextKey,
    required this.total,
  });

  final dynamic nextKey;
  final String total;

  Pagination copyWith({
    dynamic nextKey,
    String? total,
  }) =>
      Pagination(
        nextKey: nextKey ?? this.nextKey,
        total: total ?? this.total,
      );

  factory Pagination.fromRawJson(String str) =>
      Pagination.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        nextKey: json["next_key"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "next_key": nextKey,
        "total": total,
      };
}

class TxResponse {
  TxResponse({
    required this.height,
    required this.txhash,
    required this.codespace,
    required this.code,
    required this.data,
    required this.rawLog,
    required this.logs,
    required this.info,
    required this.gasWanted,
    required this.gasUsed,
    required this.tx,
    required this.timestamp,
  });

  final String height;
  final String txhash;
  final String codespace;
  final int code;
  final String data;
  final String rawLog;
  final List<Log> logs;
  final String info;
  final String gasWanted;
  final String gasUsed;
  final Tx tx;
  final DateTime timestamp;

  factory TxResponse.fromRawJson(String str) =>
      TxResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TxResponse.fromJson(Map<String, dynamic> json) => TxResponse(
        height: json["height"],
        txhash: json["txhash"],
        codespace: json["codespace"],
        code: json["code"],
        data: json["data"],
        rawLog: json["raw_log"],
        logs: List<Log>.from((json["logs"] ?? []).map((x) => Log.fromJson(x))),
        info: json["info"],
        gasWanted: json["gas_wanted"],
        gasUsed: json["gas_used"],
        tx: Tx.fromJson(json["tx"]),
        timestamp: DateTime.parse(json["timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "txhash": txhash,
        "codespace": codespace,
        "code": code,
        "data": data,
        "raw_log": rawLog,
        "logs": List<dynamic>.from(logs.map((x) => x.toJson())),
        "info": info,
        "gas_wanted": gasWanted,
        "gas_used": gasUsed,
        "tx": tx.toJson(),
        "timestamp": timestamp.toIso8601String(),
      };

  TxResponse copyWith({
    String? height,
    String? txhash,
    String? codespace,
    int? code,
    String? data,
    String? rawLog,
    List<Log>? logs,
    String? info,
    String? gasWanted,
    String? gasUsed,
    Tx? tx,
    DateTime? timestamp,
  }) {
    return TxResponse(
      height: height ?? this.height,
      txhash: txhash ?? this.txhash,
      codespace: codespace ?? this.codespace,
      code: code ?? this.code,
      data: data ?? this.data,
      rawLog: rawLog ?? this.rawLog,
      logs: logs ?? this.logs,
      info: info ?? this.info,
      gasWanted: gasWanted ?? this.gasWanted,
      gasUsed: gasUsed ?? this.gasUsed,
      tx: tx ?? this.tx,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}

class Log {
  Log({
    required this.msgIndex,
    required this.log,
    required this.events,
  });

  final int msgIndex;
  final String log;
  final List<Event> events;

  Log copyWith({
    int? msgIndex,
    String? log,
    List<Event>? events,
  }) =>
      Log(
        msgIndex: msgIndex ?? this.msgIndex,
        log: log ?? this.log,
        events: events ?? this.events,
      );

  factory Log.fromRawJson(String str) => Log.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Log.fromJson(Map<String, dynamic> json) => Log(
        msgIndex: json["msg_index"],
        log: json["log"],
        events: List<Event>.from(
            (json["events"] ?? []).map((x) => Event.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "msg_index": msgIndex,
        "log": log,
        "events": List<dynamic>.from(events.map((x) => x.toJson())),
      };
}

class Event {
  Event({
    required this.type,
    required this.attributes,
  });

  final String type;
  final List<Attribute> attributes;

  Event copyWith({
    String? type,
    List<Attribute>? attributes,
  }) =>
      Event(
        type: type ?? this.type,
        attributes: attributes ?? this.attributes,
      );

  factory Event.fromRawJson(String str) => Event.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        type: json["type"],
        attributes: List<Attribute>.from(
            (json["attributes"] ?? []).map((x) => Attribute.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
      };
}

class Attribute {
  Attribute({
    required this.key,
    required this.value,
  });

  final String key;
  final String value;

  Attribute copyWith({
    String? key,
    String? value,
  }) =>
      Attribute(
        key: key ?? this.key,
        value: value ?? this.value,
      );

  factory Attribute.fromRawJson(String str) =>
      Attribute.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
      };
}

class Tx {
  Tx({
    required this.type,
    required this.body,
    required this.authInfo,
    required this.signatures,
  });

  final String type;
  final Body body;
  final AuthInfo authInfo;
  final List<String> signatures;

  Tx copyWith({
    String? type,
    Body? body,
    AuthInfo? authInfo,
    List<String>? signatures,
  }) =>
      Tx(
        type: type ?? this.type,
        body: body ?? this.body,
        authInfo: authInfo ?? this.authInfo,
        signatures: signatures ?? this.signatures,
      );

  factory Tx.fromRawJson(String str) => Tx.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tx.fromJson(Map<String, dynamic> json) => Tx(
        type: json["@type"] ?? '',
        body: Body.fromJson(json["body"]),
        authInfo: AuthInfo.fromJson(json["auth_info"]),
        signatures: List<String>.from((json["signatures"] ?? []).map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "body": body.toJson(),
        "auth_info": authInfo.toJson(),
        "signatures": List<dynamic>.from(signatures.map((x) => x)),
      };
}

class AuthInfo {
  AuthInfo({
    required this.signerInfos,
    required this.fee,
  });

  final List<SignerInfo> signerInfos;
  final Fee fee;

  AuthInfo copyWith({
    List<SignerInfo>? signerInfos,
    Fee? fee,
  }) =>
      AuthInfo(
        signerInfos: signerInfos ?? this.signerInfos,
        fee: fee ?? this.fee,
      );

  factory AuthInfo.fromRawJson(String str) =>
      AuthInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuthInfo.fromJson(Map<String, dynamic> json) => AuthInfo(
        signerInfos: List<SignerInfo>.from(
            (json["signer_infos"] ?? []).map((x) => SignerInfo.fromJson(x))),
        fee: Fee.fromJson(json["fee"]),
      );

  Map<String, dynamic> toJson() => {
        "signer_infos": List<dynamic>.from(signerInfos.map((x) => x.toJson())),
        "fee": fee.toJson(),
      };
}

class Fee {
  Fee({
    required this.amount,
    required this.gasLimit,
    required this.payer,
    required this.granter,
  });

  final List<TxCoin> amount;
  final String gasLimit;
  final String payer;
  final String granter;

  factory Fee.fromRawJson(String str) => Fee.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Fee.fromJson(Map<String, dynamic> json) => Fee(
        amount: List<TxCoin>.from(
            (json["amount"] ?? []).map((x) => TxCoin.fromJson(x))),
        gasLimit: json["gas_limit"],
        payer: json["payer"],
        granter: json["granter"],
      );

  Map<String, dynamic> toJson() => {
        "amount": List<dynamic>.from(amount.map((x) => x.toJson())),
        "gas_limit": gasLimit,
        "payer": payer,
        "granter": granter,
      };

  Fee copyWith({
    List<TxCoin>? amount,
    String? gasLimit,
    String? payer,
    String? granter,
  }) {
    return Fee(
      amount: amount ?? this.amount,
      gasLimit: gasLimit ?? this.gasLimit,
      payer: payer ?? this.payer,
      granter: granter ?? this.granter,
    );
  }
}

class TxCoin with EquatableMixin {
  TxCoin({
    required this.denom,
    required this.amount,
    required this.ibc,
  });

  final String denom;
  final String amount;
  final String? ibc;

  double get amountInDouble => amount.parseDouble();
  String get amountFormatted => formatAmount(amountInDouble);

  TxCoin copyWith({
    String? denom,
    String? amount,
    String? ibc,
  }) =>
      TxCoin(
        denom: denom ?? this.denom,
        amount: amount ?? this.amount,
        ibc: ibc ?? this.ibc,
      );

  factory TxCoin.fromRawJson(String str) => TxCoin.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TxCoin.fromJson(Map<String, dynamic> json) => TxCoin(
        denom: json["denom"] ?? '',
        amount: json["amount"] ?? '',
        ibc: json["ibc"],
      );

  Map<String, dynamic> toJson() => {
        "denom": denom,
        "amount": amount,
        "ibc": ibc,
      };

  @override
  String toString() => (ibc ?? denom).toUpperCase().toString();

  @override
  List<Object> get props => [ibc ?? denom, amount];
}

class SignerInfo {
  SignerInfo({
    required this.publicKey,
    required this.modeInfo,
    required this.sequence,
  });

  final PublicKey publicKey;
  final ModeInfo modeInfo;
  final String sequence;

  SignerInfo copyWith({
    PublicKey? publicKey,
    ModeInfo? modeInfo,
    String? sequence,
  }) =>
      SignerInfo(
        publicKey: publicKey ?? this.publicKey,
        modeInfo: modeInfo ?? this.modeInfo,
        sequence: sequence ?? this.sequence,
      );

  factory SignerInfo.fromRawJson(String str) =>
      SignerInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignerInfo.fromJson(Map<String, dynamic> json) => SignerInfo(
        publicKey: PublicKey.fromJson(json["public_key"]),
        modeInfo: ModeInfo.fromJson(json["mode_info"]),
        sequence: json["sequence"],
      );

  Map<String, dynamic> toJson() => {
        "public_key": publicKey.toJson(),
        "mode_info": modeInfo.toJson(),
        "sequence": sequence,
      };
}

class ModeInfo {
  ModeInfo({
    required this.single,
  });

  final Single single;

  ModeInfo copyWith({
    Single? single,
  }) =>
      ModeInfo(
        single: single ?? this.single,
      );

  factory ModeInfo.fromRawJson(String str) =>
      ModeInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModeInfo.fromJson(Map<String, dynamic> json) => ModeInfo(
        single: Single.fromJson(json["single"]),
      );

  Map<String, dynamic> toJson() => {
        "single": single.toJson(),
      };
}

class Single {
  Single({
    required this.mode,
  });

  final String mode;

  Single copyWith({
    String? mode,
  }) =>
      Single(
        mode: mode ?? this.mode,
      );

  factory Single.fromRawJson(String str) => Single.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Single.fromJson(Map<String, dynamic> json) => Single(
        mode: json["mode"],
      );

  Map<String, dynamic> toJson() => {
        "mode": mode,
      };
}

class PublicKey {
  PublicKey({
    required this.type,
    required this.key,
  });

  final String type;
  final String key;

  PublicKey copyWith({
    String? type,
    String? key,
  }) =>
      PublicKey(
        type: type ?? this.type,
        key: key ?? this.key,
      );

  factory PublicKey.fromRawJson(String str) =>
      PublicKey.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PublicKey.fromJson(Map<String, dynamic> json) => PublicKey(
        type: json["@type"],
        key: json["key"],
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "key": key,
      };
}

class Body {
  Body({
    required this.messages,
    required this.memo,
    required this.timeoutHeight,
    required this.extensionOptions,
    required this.nonCriticalExtensionOptions,
  });

  final List<Message> messages;
  final String memo;
  final String timeoutHeight;
  final List<dynamic> extensionOptions;
  final List<dynamic> nonCriticalExtensionOptions;

  Body copyWith({
    List<Message>? messages,
    String? memo,
    String? timeoutHeight,
    List<dynamic>? extensionOptions,
    List<dynamic>? nonCriticalExtensionOptions,
  }) =>
      Body(
        messages: messages ?? this.messages,
        memo: memo ?? this.memo,
        timeoutHeight: timeoutHeight ?? this.timeoutHeight,
        extensionOptions: extensionOptions ?? this.extensionOptions,
        nonCriticalExtensionOptions:
            nonCriticalExtensionOptions ?? this.nonCriticalExtensionOptions,
      );

  factory Body.fromRawJson(String str) => Body.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        messages: List<Message>.from(
            (json["messages"] ?? []).map((x) => Message.fromJson(x))),
        memo: json["memo"],
        timeoutHeight: json["timeout_height"],
        extensionOptions:
            List<dynamic>.from((json["extension_options"] ?? []).map((x) => x)),
        nonCriticalExtensionOptions: List<dynamic>.from(
            (json["non_critical_extension_options"] ?? []).map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "messages": List<dynamic>.from(messages.map((x) => x.toJson())),
        "memo": memo,
        "timeout_height": timeoutHeight,
        "extension_options": List<dynamic>.from(extensionOptions.map((x) => x)),
        "non_critical_extension_options":
            List<dynamic>.from(nonCriticalExtensionOptions.map((x) => x)),
      };
}

class Message {
  Message({
    required this.type,
    required this.poolCreatorAddress,
    required this.poolTypeId,
    required this.depositCoins,
    required this.swapRequesterAddress,
    required this.poolId,
    required this.swapTypeId,
    required this.offerCoin,
    required this.demandCoinDenom,
    required this.offerCoinFee,
    required this.orderPrice,
    required this.fromAddress,
    required this.toAddress,
    required this.amount,
    required this.packet,
  });

  final String type;
  final String poolCreatorAddress;
  final int poolTypeId;
  final List<TxCoin>? depositCoins;
  final List<TxCoin>? amount;
  final String swapRequesterAddress;
  final String poolId;
  final int swapTypeId;
  final TxCoin? offerCoin;
  final String demandCoinDenom;
  final String fromAddress;
  final String toAddress;
  final TxCoin? offerCoinFee;
  final TxPacket? packet;
  final String orderPrice;

  factory Message.fromRawJson(String str) => Message.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        type: json["@type"] ?? '',
        packet:
            json["packet"] != null ? TxPacket.fromMap(json["packet"]) : null,
        poolCreatorAddress: json["pool_creator_address"] ?? '',
        poolTypeId: json["pool_type_id"] ?? 0,
        fromAddress: json["from_address"] ?? '',
        toAddress: json["to_address"] ?? '',
        depositCoins: json["deposit_coins"] != null
            ? List<TxCoin>.from(
                (json["deposit_coins"]).map((x) => TxCoin.fromJson(x)))
            : null,
        amount: json["amount"] != null
            ? List<TxCoin>.from((json["amount"]).map((x) => TxCoin.fromJson(x)))
            : null,
        swapRequesterAddress: json["swap_requester_address"] ?? '',
        poolId: json["pool_id"] ?? '',
        swapTypeId: json["swap_type_id"] ?? 0,
        offerCoin: json["offer_coin"] != null
            ? TxCoin.fromJson(json["offer_coin"])
            : null,
        demandCoinDenom: json["demand_coin_denom"] ?? '',
        offerCoinFee: json["offer_coin_fee"] != null
            ? TxCoin.fromJson(json["offer_coin_fee"])
            : null,
        orderPrice: json["order_price"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "pool_creator_address": poolCreatorAddress,
        "pool_type_id": poolTypeId,
        "deposit_coins": depositCoins,
        "swap_requester_address": swapRequesterAddress,
        "pool_id": poolId,
        "swap_type_id": swapTypeId,
        "offer_coin": offerCoin,
        "demand_coin_denom": demandCoinDenom,
        "offer_coin_fee": offerCoinFee,
        "order_price": orderPrice,
      };

  Message copyWith({
    String? type,
    String? poolCreatorAddress,
    int? poolTypeId,
    List<TxCoin>? depositCoins,
    List<TxCoin>? amount,
    String? swapRequesterAddress,
    String? poolId,
    int? swapTypeId,
    TxCoin? offerCoin,
    String? demandCoinDenom,
    String? fromAddress,
    String? toAddress,
    TxCoin? offerCoinFee,
    TxPacket? packet,
    String? orderPrice,
  }) {
    return Message(
      type: type ?? this.type,
      poolCreatorAddress: poolCreatorAddress ?? this.poolCreatorAddress,
      poolTypeId: poolTypeId ?? this.poolTypeId,
      depositCoins: depositCoins ?? this.depositCoins,
      amount: amount ?? this.amount,
      swapRequesterAddress: swapRequesterAddress ?? this.swapRequesterAddress,
      poolId: poolId ?? this.poolId,
      swapTypeId: swapTypeId ?? this.swapTypeId,
      offerCoin: offerCoin ?? this.offerCoin,
      demandCoinDenom: demandCoinDenom ?? this.demandCoinDenom,
      fromAddress: fromAddress ?? this.fromAddress,
      toAddress: toAddress ?? this.toAddress,
      offerCoinFee: offerCoinFee ?? this.offerCoinFee,
      packet: packet ?? this.packet,
      orderPrice: orderPrice ?? this.orderPrice,
    );
  }
}
