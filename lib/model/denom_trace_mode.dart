import 'dart:convert';

import 'package:equatable/equatable.dart';

class DenomTraceModel with EquatableMixin {
  final DenomTrace denomTrace;
  DenomTraceModel({
    required this.denomTrace,
  });

  DenomTraceModel copyWith({
    DenomTrace? denomTrace,
  }) {
    return DenomTraceModel(
      denomTrace: denomTrace ?? this.denomTrace,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'denom_trace': denomTrace.toMap(),
    };
  }

  factory DenomTraceModel.fromMap(Map<String, dynamic> map) {
    return DenomTraceModel(
      denomTrace: DenomTrace.fromMap(map['denom_trace']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DenomTraceModel.fromJson(String source) =>
      DenomTraceModel.fromMap(json.decode(source));

  @override
  String toString() => 'DenomTraceModel(denom_trace: $denomTrace)';

  @override
  List<Object> get props => [denomTrace];
}

class DenomTrace with EquatableMixin {
  final String path;
  final String baseDenom;
  DenomTrace({
    required this.path,
    required this.baseDenom,
  });

  DenomTrace copyWith({
    String? path,
    String? baseDenom,
  }) {
    return DenomTrace(
      path: path ?? this.path,
      baseDenom: baseDenom ?? this.baseDenom,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'path': path,
      'base_denom': baseDenom,
    };
  }

  factory DenomTrace.fromMap(Map<String, dynamic> map) {
    return DenomTrace(
      path: map['path'] ?? '',
      baseDenom: map['base_denom'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DenomTrace.fromJson(String source) =>
      DenomTrace.fromMap(json.decode(source));

  @override
  String toString() => 'DenomTrace(path: $path, base_denom: $baseDenom)';

  @override
  List<Object> get props => [path, baseDenom];
}
