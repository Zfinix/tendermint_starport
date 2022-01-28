// ignore_for_file: sort_constructors_first, avoid_dynamic_calls

import 'dart:convert';

import 'package:equatable/equatable.dart';

class PoolListModel with EquatableMixin {
  PoolListModel({
    required this.pools,
    required this.pagination,
  });

  final List<Pool> pools;
  final Pagination pagination;

  PoolListModel copyWith({
    List<Pool>? pools,
    Pagination? pagination,
  }) {
    return PoolListModel(
      pools: pools ?? this.pools,
      pagination: pagination ?? this.pagination,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pools': pools.map((x) => x.toMap()).toList(),
      'pagination': pagination.toMap(),
    };
  }

  factory PoolListModel.fromMap(Map<String, dynamic> map) {
    return PoolListModel(
      pools: (map['pools'] as List)
          .map((x) => Pool.fromMap(x as Map<String, dynamic>))
          .toList(),
      pagination: Pagination.fromMap(map['pagination'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory PoolListModel.fromJson(String source) =>
      PoolListModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PoolListModel(pools: $pools, pagination: $pagination)';

  @override
  List<Object?> get props => [
        pools,
        pagination,
      ];
}

class Pool with EquatableMixin {
  final String id;
  final int type_id;
  final List<String> reserve_coin_denoms;
  final String reserve_account_address;
  final String pool_coin_denom;
  final double liquidity;
  Pool({
    required this.id,
    required this.type_id,
    required this.reserve_coin_denoms,
    required this.reserve_account_address,
    required this.pool_coin_denom,
    required this.liquidity,
  });

  Pool copyWith({
    String? id,
    int? type_id,
    List<String>? reserve_coin_denoms,
    String? reserve_account_address,
    String? pool_coin_denom,
    double? liquidity,
  }) {
    return Pool(
      id: id ?? this.id,
      type_id: type_id ?? this.type_id,
      reserve_coin_denoms: reserve_coin_denoms ?? this.reserve_coin_denoms,
      reserve_account_address:
          reserve_account_address ?? this.reserve_account_address,
      pool_coin_denom: pool_coin_denom ?? this.pool_coin_denom,
      liquidity: liquidity ?? this.liquidity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type_id': type_id,
      'reserve_coin_denoms': reserve_coin_denoms,
      'reserve_account_address': reserve_account_address,
      'pool_coin_denom': pool_coin_denom,
      'liquidity': liquidity,
    };
  }

  factory Pool.fromMap(Map<String, dynamic> map) {
    return Pool(
      id: map['id'] as String? ?? '',
      liquidity: map['liquidity'] as double? ?? 0,
      type_id: (map['type_id'] as int?) ?? 0,
      reserve_coin_denoms: List<String>.from(
        map['reserve_coin_denoms'] as List,
      ),
      reserve_account_address:
          (map['reserve_account_address'] as String?) ?? '',
      pool_coin_denom: (map['pool_coin_denom'] as String?) ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Pool.fromJson(String source) =>
      Pool.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Pool(id: $id, type_id: $type_id, reserve_coin_denoms: $reserve_coin_denoms, liquidity: $liquidity, reserve_account_address: $reserve_account_address, pool_coin_denom: $pool_coin_denom)';
  }

  @override
  List<Object> get props {
    return [
      id,
      type_id,
      reserve_coin_denoms,
      liquidity,
      reserve_account_address,
      pool_coin_denom,
    ];
  }
}

class Pagination with EquatableMixin {
  final Object? next_key;
  final String total;
  Pagination({
    required this.next_key,
    required this.total,
  });

  Pagination copyWith({
    Object? next_key,
    String? total,
  }) {
    return Pagination(
      next_key: next_key ?? this.next_key,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'next_key': next_key,
      'total': total,
    };
  }

  factory Pagination.fromMap(Map<String, dynamic> map) {
    return Pagination(
      next_key: map['next_key'] as Object?,
      total: (map['total'] as String?) ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Pagination.fromJson(String source) =>
      Pagination.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Pagination(next_key: $next_key, total: $total)';

  @override
  List<Object> get props => [total];
}
