import 'dart:convert';

import 'package:equatable/equatable.dart';

class PoolParamsModel with EquatableMixin {
  final Params params;
  PoolParamsModel({
    required this.params,
  });

  PoolParamsModel copyWith({
    Params? params,
  }) {
    return PoolParamsModel(
      params: params ?? this.params,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'params': params.toMap(),
    };
  }

  factory PoolParamsModel.fromMap(Map<String, dynamic> map) {
    return PoolParamsModel(
      params: Params.fromMap(map['params']),
    );
  }
  factory PoolParamsModel.empty() {
    return PoolParamsModel(
      params: Params.empty(),
    );
  }

  String toJson() => json.encode(toMap());

  factory PoolParamsModel.fromJson(String source) =>
      PoolParamsModel.fromMap(json.decode(source));

  @override
  String toString() => 'PoolParamsModel(params: $params)';

  @override
  List<Object> get props => [params];
}

class Params with EquatableMixin {
  final List<PoolType> pool_types;
  final String min_init_deposit_amount;
  final String init_pool_coin_mint_amount;
  final String max_reserve_coin_amount;
  final List<PoolCreationFee> pool_creation_fee;
  final String swap_fee_rate;
  final String withdraw_fee_rate;
  final String max_order_amount_ratio;
  final int unit_batch_height;
  final bool circuit_breaker_enabled;
  Params({
    required this.pool_types,
    required this.min_init_deposit_amount,
    required this.init_pool_coin_mint_amount,
    required this.max_reserve_coin_amount,
    required this.pool_creation_fee,
    required this.swap_fee_rate,
    required this.withdraw_fee_rate,
    required this.max_order_amount_ratio,
    required this.unit_batch_height,
    required this.circuit_breaker_enabled,
  });

  Params copyWith({
    List<PoolType>? pool_types,
    String? min_init_deposit_amount,
    String? init_pool_coin_mint_amount,
    String? max_reserve_coin_amount,
    List<PoolCreationFee>? pool_creation_fee,
    String? swap_fee_rate,
    String? withdraw_fee_rate,
    String? max_order_amount_ratio,
    int? unit_batch_height,
    bool? circuit_breaker_enabled,
  }) {
    return Params(
      pool_types: pool_types ?? this.pool_types,
      min_init_deposit_amount:
          min_init_deposit_amount ?? this.min_init_deposit_amount,
      init_pool_coin_mint_amount:
          init_pool_coin_mint_amount ?? this.init_pool_coin_mint_amount,
      max_reserve_coin_amount:
          max_reserve_coin_amount ?? this.max_reserve_coin_amount,
      pool_creation_fee: pool_creation_fee ?? this.pool_creation_fee,
      swap_fee_rate: swap_fee_rate ?? this.swap_fee_rate,
      withdraw_fee_rate: withdraw_fee_rate ?? this.withdraw_fee_rate,
      max_order_amount_ratio:
          max_order_amount_ratio ?? this.max_order_amount_ratio,
      unit_batch_height: unit_batch_height ?? this.unit_batch_height,
      circuit_breaker_enabled:
          circuit_breaker_enabled ?? this.circuit_breaker_enabled,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pool_types': pool_types.map((x) => x.toMap()).toList(),
      'min_init_deposit_amount': min_init_deposit_amount,
      'init_pool_coin_mint_amount': init_pool_coin_mint_amount,
      'max_reserve_coin_amount': max_reserve_coin_amount,
      'pool_creation_fee': pool_creation_fee.map((x) => x.toMap()).toList(),
      'swap_fee_rate': swap_fee_rate,
      'withdraw_fee_rate': withdraw_fee_rate,
      'max_order_amount_ratio': max_order_amount_ratio,
      'unit_batch_height': unit_batch_height,
      'circuit_breaker_enabled': circuit_breaker_enabled,
    };
  }

  factory Params.fromMap(Map<String, dynamic> map) {
    return Params(
      pool_types: List<PoolType>.from(
          map['pool_types']?.map((x) => PoolType.fromMap(x))),
      min_init_deposit_amount: map['min_init_deposit_amount'] ?? '',
      init_pool_coin_mint_amount: map['init_pool_coin_mint_amount'] ?? '',
      max_reserve_coin_amount: map['max_reserve_coin_amount'] ?? '',
      pool_creation_fee: List<PoolCreationFee>.from(
          (map['pool_creation_fee'] as List? ?? [])
              .map((x) => PoolCreationFee.fromMap(x))),
      swap_fee_rate: map['swap_fee_rate'] ?? '',
      withdraw_fee_rate: map['withdraw_fee_rate'] ?? '',
      max_order_amount_ratio: map['max_order_amount_ratio'] ?? '',
      unit_batch_height: map['unit_batch_height'] ?? 0,
      circuit_breaker_enabled: map['circuit_breaker_enabled'] ?? false,
    );
  }

  factory Params.empty() {
    return Params(
      pool_types: [],
      min_init_deposit_amount: '',
      init_pool_coin_mint_amount: '',
      max_reserve_coin_amount: '',
      pool_creation_fee: [],
      swap_fee_rate: '',
      withdraw_fee_rate: '',
      max_order_amount_ratio: '',
      unit_batch_height: 0,
      circuit_breaker_enabled: false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Params.fromJson(String source) => Params.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Params(pool_types: $pool_types, min_init_deposit_amount: $min_init_deposit_amount, init_pool_coin_mint_amount: $init_pool_coin_mint_amount, max_reserve_coin_amount: $max_reserve_coin_amount, pool_creation_fee: $pool_creation_fee, swap_fee_rate: $swap_fee_rate, withdraw_fee_rate: $withdraw_fee_rate, max_order_amount_ratio: $max_order_amount_ratio, unit_batch_height: $unit_batch_height, circuit_breaker_enabled: $circuit_breaker_enabled)';
  }

  @override
  List<Object> get props {
    return [
      pool_types,
      min_init_deposit_amount,
      init_pool_coin_mint_amount,
      max_reserve_coin_amount,
      pool_creation_fee,
      swap_fee_rate,
      withdraw_fee_rate,
      max_order_amount_ratio,
      unit_batch_height,
      circuit_breaker_enabled,
    ];
  }
}

class PoolType with EquatableMixin {
  final int id;
  final String name;
  final int min_reserve_coin_num;
  final int max_reserve_coin_num;
  final String description;
  PoolType({
    required this.id,
    required this.name,
    required this.min_reserve_coin_num,
    required this.max_reserve_coin_num,
    required this.description,
  });

  PoolType copyWith({
    int? id,
    String? name,
    int? min_reserve_coin_num,
    int? max_reserve_coin_num,
    String? description,
  }) {
    return PoolType(
      id: id ?? this.id,
      name: name ?? this.name,
      min_reserve_coin_num: min_reserve_coin_num ?? this.min_reserve_coin_num,
      max_reserve_coin_num: max_reserve_coin_num ?? this.max_reserve_coin_num,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'min_reserve_coin_num': min_reserve_coin_num,
      'max_reserve_coin_num': max_reserve_coin_num,
      'description': description,
    };
  }

  factory PoolType.fromMap(Map<String, dynamic> map) {
    return PoolType(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      min_reserve_coin_num: map['min_reserve_coin_num'] ?? 0,
      max_reserve_coin_num: map['max_reserve_coin_num'] ?? 0,
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PoolType.fromJson(String source) =>
      PoolType.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PoolType(id: $id, name: $name, min_reserve_coin_num: $min_reserve_coin_num, max_reserve_coin_num: $max_reserve_coin_num, description: $description)';
  }

  @override
  List<Object> get props {
    return [
      id,
      name,
      min_reserve_coin_num,
      max_reserve_coin_num,
      description,
    ];
  }
}

class PoolCreationFee with EquatableMixin {
  final String denom;
  final String amount;
  PoolCreationFee({
    required this.denom,
    required this.amount,
  });

  PoolCreationFee copyWith({
    String? denom,
    String? amount,
  }) {
    return PoolCreationFee(
      denom: denom ?? this.denom,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'denom': denom,
      'amount': amount,
    };
  }

  factory PoolCreationFee.fromMap(Map<String, dynamic> map) {
    return PoolCreationFee(
      denom: map['denom'] ?? '',
      amount: map['amount'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PoolCreationFee.fromJson(String source) =>
      PoolCreationFee.fromMap(json.decode(source));

  @override
  String toString() => 'PoolCreationFee(denom: $denom, amount: $amount)';

  @override
  List<Object> get props => [denom, amount];
}
