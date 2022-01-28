import 'dart:convert';

class TxPacket {
  final String sequence;
  final String source_port;
  final String source_channel;
  final String destination_port;
  final String destination_channel;
  final String data;
  final TimeoutHeight timeout_height;
  final String timeout_timestamp;
  TxPacket({
    required this.sequence,
    required this.source_port,
    required this.source_channel,
    required this.destination_port,
    required this.destination_channel,
    required this.data,
    required this.timeout_height,
    required this.timeout_timestamp,
  });

  TxPacket copyWith({
    String? sequence,
    String? source_port,
    String? source_channel,
    String? destination_port,
    String? destination_channel,
    String? data,
    TimeoutHeight? timeout_height,
    String? timeout_timestamp,
  }) {
    return TxPacket(
      sequence: sequence ?? this.sequence,
      source_port: source_port ?? this.source_port,
      source_channel: source_channel ?? this.source_channel,
      destination_port: destination_port ?? this.destination_port,
      destination_channel: destination_channel ?? this.destination_channel,
      data: data ?? this.data,
      timeout_height: timeout_height ?? this.timeout_height,
      timeout_timestamp: timeout_timestamp ?? this.timeout_timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sequence': sequence,
      'source_port': source_port,
      'source_channel': source_channel,
      'destination_port': destination_port,
      'destination_channel': destination_channel,
      'data': data,
      'timeout_height': timeout_height.toMap(),
      'timeout_timestamp': timeout_timestamp,
    };
  }

  factory TxPacket.fromMap(Map<String, dynamic> map) {
    return TxPacket(
      sequence: map['sequence'] ?? '',
      source_port: map['source_port'] ?? '',
      source_channel: map['source_channel'] ?? '',
      destination_port: map['destination_port'] ?? '',
      destination_channel: map['destination_channel'] ?? '',
      data: map['data'] ?? '',
      timeout_height: TimeoutHeight.fromMap(map['timeout_height']),
      timeout_timestamp: map['timeout_timestamp'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TxPacket.fromJson(String source) => TxPacket.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TxPacket(sequence: $sequence, source_port: $source_port, source_channel: $source_channel, destination_port: $destination_port, destination_channel: $destination_channel, data: $data, timeout_height: $timeout_height, timeout_timestamp: $timeout_timestamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TxPacket &&
      other.sequence == sequence &&
      other.source_port == source_port &&
      other.source_channel == source_channel &&
      other.destination_port == destination_port &&
      other.destination_channel == destination_channel &&
      other.data == data &&
      other.timeout_height == timeout_height &&
      other.timeout_timestamp == timeout_timestamp;
  }

  @override
  int get hashCode {
    return sequence.hashCode ^
      source_port.hashCode ^
      source_channel.hashCode ^
      destination_port.hashCode ^
      destination_channel.hashCode ^
      data.hashCode ^
      timeout_height.hashCode ^
      timeout_timestamp.hashCode;
  }
}

class TimeoutHeight {
  final String revision_number;
  final String revision_height;
  TimeoutHeight({
    required this.revision_number,
    required this.revision_height,
  });

  TimeoutHeight copyWith({
    String? revision_number,
    String? revision_height,
  }) {
    return TimeoutHeight(
      revision_number: revision_number ?? this.revision_number,
      revision_height: revision_height ?? this.revision_height,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'revision_number': revision_number,
      'revision_height': revision_height,
    };
  }

  factory TimeoutHeight.fromMap(Map<String, dynamic> map) {
    return TimeoutHeight(
      revision_number: map['revision_number'] ?? '',
      revision_height: map['revision_height'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TimeoutHeight.fromJson(String source) => TimeoutHeight.fromMap(json.decode(source));

  @override
  String toString() => 'Timeout_height(revision_number: $revision_number, revision_height: $revision_height)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TimeoutHeight &&
      other.revision_number == revision_number &&
      other.revision_height == revision_height;
  }

  @override
  int get hashCode => revision_number.hashCode ^ revision_height.hashCode;
}