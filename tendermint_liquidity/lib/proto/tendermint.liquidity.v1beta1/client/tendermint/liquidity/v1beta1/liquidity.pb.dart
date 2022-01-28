///
//  Generated code. Do not modify.
//  source: tendermint/liquidity/v1beta1/liquidity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../cosmos_proto/coin.pb.dart' as $4;
import 'tx.pb.dart' as $0;

class PoolType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PoolType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minReserveCoinNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxReserveCoinNum', $pb.PbFieldType.OU3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  PoolType._() : super();
  factory PoolType({
    $core.int? id,
    $core.String? name,
    $core.int? minReserveCoinNum,
    $core.int? maxReserveCoinNum,
    $core.String? description,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (minReserveCoinNum != null) {
      _result.minReserveCoinNum = minReserveCoinNum;
    }
    if (maxReserveCoinNum != null) {
      _result.maxReserveCoinNum = maxReserveCoinNum;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory PoolType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PoolType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PoolType clone() => PoolType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PoolType copyWith(void Function(PoolType) updates) => super.copyWith((message) => updates(message as PoolType)) as PoolType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PoolType create() => PoolType._();
  PoolType createEmptyInstance() => create();
  static $pb.PbList<PoolType> createRepeated() => $pb.PbList<PoolType>();
  @$core.pragma('dart2js:noInline')
  static PoolType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PoolType>(create);
  static PoolType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minReserveCoinNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set minReserveCoinNum($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinReserveCoinNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinReserveCoinNum() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxReserveCoinNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxReserveCoinNum($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxReserveCoinNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxReserveCoinNum() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);
}

class Params extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Params', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..pc<PoolType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolTypes', $pb.PbFieldType.PM, subBuilder: PoolType.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minInitDepositAmount')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initPoolCoinMintAmount')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxReserveCoinAmount')
    ..pc<$4.Coin>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolCreationFee', $pb.PbFieldType.PM, subBuilder: $4.Coin.create)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swapFeeRate')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withdrawFeeRate')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxOrderAmountRatio')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unitBatchHeight', $pb.PbFieldType.OU3)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'circuitBreakerEnabled')
    ..hasRequiredFields = false
  ;

  Params._() : super();
  factory Params({
    $core.Iterable<PoolType>? poolTypes,
    $core.String? minInitDepositAmount,
    $core.String? initPoolCoinMintAmount,
    $core.String? maxReserveCoinAmount,
    $core.Iterable<$4.Coin>? poolCreationFee,
    $core.String? swapFeeRate,
    $core.String? withdrawFeeRate,
    $core.String? maxOrderAmountRatio,
    $core.int? unitBatchHeight,
    $core.bool? circuitBreakerEnabled,
  }) {
    final _result = create();
    if (poolTypes != null) {
      _result.poolTypes.addAll(poolTypes);
    }
    if (minInitDepositAmount != null) {
      _result.minInitDepositAmount = minInitDepositAmount;
    }
    if (initPoolCoinMintAmount != null) {
      _result.initPoolCoinMintAmount = initPoolCoinMintAmount;
    }
    if (maxReserveCoinAmount != null) {
      _result.maxReserveCoinAmount = maxReserveCoinAmount;
    }
    if (poolCreationFee != null) {
      _result.poolCreationFee.addAll(poolCreationFee);
    }
    if (swapFeeRate != null) {
      _result.swapFeeRate = swapFeeRate;
    }
    if (withdrawFeeRate != null) {
      _result.withdrawFeeRate = withdrawFeeRate;
    }
    if (maxOrderAmountRatio != null) {
      _result.maxOrderAmountRatio = maxOrderAmountRatio;
    }
    if (unitBatchHeight != null) {
      _result.unitBatchHeight = unitBatchHeight;
    }
    if (circuitBreakerEnabled != null) {
      _result.circuitBreakerEnabled = circuitBreakerEnabled;
    }
    return _result;
  }
  factory Params.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Params.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Params clone() => Params()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Params copyWith(void Function(Params) updates) => super.copyWith((message) => updates(message as Params)) as Params; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Params create() => Params._();
  Params createEmptyInstance() => create();
  static $pb.PbList<Params> createRepeated() => $pb.PbList<Params>();
  @$core.pragma('dart2js:noInline')
  static Params getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Params>(create);
  static Params? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PoolType> get poolTypes => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get minInitDepositAmount => $_getSZ(1);
  @$pb.TagNumber(2)
  set minInitDepositAmount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMinInitDepositAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinInitDepositAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get initPoolCoinMintAmount => $_getSZ(2);
  @$pb.TagNumber(3)
  set initPoolCoinMintAmount($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInitPoolCoinMintAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearInitPoolCoinMintAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get maxReserveCoinAmount => $_getSZ(3);
  @$pb.TagNumber(4)
  set maxReserveCoinAmount($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxReserveCoinAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxReserveCoinAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$4.Coin> get poolCreationFee => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get swapFeeRate => $_getSZ(5);
  @$pb.TagNumber(6)
  set swapFeeRate($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSwapFeeRate() => $_has(5);
  @$pb.TagNumber(6)
  void clearSwapFeeRate() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get withdrawFeeRate => $_getSZ(6);
  @$pb.TagNumber(7)
  set withdrawFeeRate($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWithdrawFeeRate() => $_has(6);
  @$pb.TagNumber(7)
  void clearWithdrawFeeRate() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get maxOrderAmountRatio => $_getSZ(7);
  @$pb.TagNumber(8)
  set maxOrderAmountRatio($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMaxOrderAmountRatio() => $_has(7);
  @$pb.TagNumber(8)
  void clearMaxOrderAmountRatio() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get unitBatchHeight => $_getIZ(8);
  @$pb.TagNumber(9)
  set unitBatchHeight($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUnitBatchHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearUnitBatchHeight() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get circuitBreakerEnabled => $_getBF(9);
  @$pb.TagNumber(10)
  set circuitBreakerEnabled($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCircuitBreakerEnabled() => $_has(9);
  @$pb.TagNumber(10)
  void clearCircuitBreakerEnabled() => clearField(10);
}

class Pool extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Pool', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'typeId', $pb.PbFieldType.OU3)
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reserveCoinDenoms')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reserveAccountAddress')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolCoinDenom')
    ..hasRequiredFields = false
  ;

  Pool._() : super();
  factory Pool({
    $fixnum.Int64? id,
    $core.int? typeId,
    $core.Iterable<$core.String>? reserveCoinDenoms,
    $core.String? reserveAccountAddress,
    $core.String? poolCoinDenom,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (typeId != null) {
      _result.typeId = typeId;
    }
    if (reserveCoinDenoms != null) {
      _result.reserveCoinDenoms.addAll(reserveCoinDenoms);
    }
    if (reserveAccountAddress != null) {
      _result.reserveAccountAddress = reserveAccountAddress;
    }
    if (poolCoinDenom != null) {
      _result.poolCoinDenom = poolCoinDenom;
    }
    return _result;
  }
  factory Pool.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pool.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pool clone() => Pool()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pool copyWith(void Function(Pool) updates) => super.copyWith((message) => updates(message as Pool)) as Pool; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pool create() => Pool._();
  Pool createEmptyInstance() => create();
  static $pb.PbList<Pool> createRepeated() => $pb.PbList<Pool>();
  @$core.pragma('dart2js:noInline')
  static Pool getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pool>(create);
  static Pool? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get typeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set typeId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTypeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTypeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get reserveCoinDenoms => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get reserveAccountAddress => $_getSZ(3);
  @$pb.TagNumber(4)
  set reserveAccountAddress($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReserveAccountAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearReserveAccountAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get poolCoinDenom => $_getSZ(4);
  @$pb.TagNumber(5)
  set poolCoinDenom($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPoolCoinDenom() => $_has(4);
  @$pb.TagNumber(5)
  void clearPoolCoinDenom() => clearField(5);
}

class PoolMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PoolMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$4.Coin>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolCoinTotalSupply', subBuilder: $4.Coin.create)
    ..pc<$4.Coin>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reserveCoins', $pb.PbFieldType.PM, subBuilder: $4.Coin.create)
    ..hasRequiredFields = false
  ;

  PoolMetadata._() : super();
  factory PoolMetadata({
    $fixnum.Int64? poolId,
    $4.Coin? poolCoinTotalSupply,
    $core.Iterable<$4.Coin>? reserveCoins,
  }) {
    final _result = create();
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (poolCoinTotalSupply != null) {
      _result.poolCoinTotalSupply = poolCoinTotalSupply;
    }
    if (reserveCoins != null) {
      _result.reserveCoins.addAll(reserveCoins);
    }
    return _result;
  }
  factory PoolMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PoolMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PoolMetadata clone() => PoolMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PoolMetadata copyWith(void Function(PoolMetadata) updates) => super.copyWith((message) => updates(message as PoolMetadata)) as PoolMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PoolMetadata create() => PoolMetadata._();
  PoolMetadata createEmptyInstance() => create();
  static $pb.PbList<PoolMetadata> createRepeated() => $pb.PbList<PoolMetadata>();
  @$core.pragma('dart2js:noInline')
  static PoolMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PoolMetadata>(create);
  static PoolMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get poolId => $_getI64(0);
  @$pb.TagNumber(1)
  set poolId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolId() => clearField(1);

  @$pb.TagNumber(2)
  $4.Coin get poolCoinTotalSupply => $_getN(1);
  @$pb.TagNumber(2)
  set poolCoinTotalSupply($4.Coin v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPoolCoinTotalSupply() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoolCoinTotalSupply() => clearField(2);
  @$pb.TagNumber(2)
  $4.Coin ensurePoolCoinTotalSupply() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$4.Coin> get reserveCoins => $_getList(2);
}

class PoolBatch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PoolBatch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beginHeight')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'depositMsgIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withdrawMsgIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swapMsgIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'executed')
    ..hasRequiredFields = false
  ;

  PoolBatch._() : super();
  factory PoolBatch({
    $fixnum.Int64? poolId,
    $fixnum.Int64? index,
    $fixnum.Int64? beginHeight,
    $fixnum.Int64? depositMsgIndex,
    $fixnum.Int64? withdrawMsgIndex,
    $fixnum.Int64? swapMsgIndex,
    $core.bool? executed,
  }) {
    final _result = create();
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (index != null) {
      _result.index = index;
    }
    if (beginHeight != null) {
      _result.beginHeight = beginHeight;
    }
    if (depositMsgIndex != null) {
      _result.depositMsgIndex = depositMsgIndex;
    }
    if (withdrawMsgIndex != null) {
      _result.withdrawMsgIndex = withdrawMsgIndex;
    }
    if (swapMsgIndex != null) {
      _result.swapMsgIndex = swapMsgIndex;
    }
    if (executed != null) {
      _result.executed = executed;
    }
    return _result;
  }
  factory PoolBatch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PoolBatch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PoolBatch clone() => PoolBatch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PoolBatch copyWith(void Function(PoolBatch) updates) => super.copyWith((message) => updates(message as PoolBatch)) as PoolBatch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PoolBatch create() => PoolBatch._();
  PoolBatch createEmptyInstance() => create();
  static $pb.PbList<PoolBatch> createRepeated() => $pb.PbList<PoolBatch>();
  @$core.pragma('dart2js:noInline')
  static PoolBatch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PoolBatch>(create);
  static PoolBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get poolId => $_getI64(0);
  @$pb.TagNumber(1)
  set poolId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get index => $_getI64(1);
  @$pb.TagNumber(2)
  set index($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get beginHeight => $_getI64(2);
  @$pb.TagNumber(3)
  set beginHeight($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBeginHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearBeginHeight() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get depositMsgIndex => $_getI64(3);
  @$pb.TagNumber(4)
  set depositMsgIndex($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDepositMsgIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearDepositMsgIndex() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get withdrawMsgIndex => $_getI64(4);
  @$pb.TagNumber(5)
  set withdrawMsgIndex($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWithdrawMsgIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearWithdrawMsgIndex() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get swapMsgIndex => $_getI64(5);
  @$pb.TagNumber(6)
  set swapMsgIndex($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSwapMsgIndex() => $_has(5);
  @$pb.TagNumber(6)
  void clearSwapMsgIndex() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get executed => $_getBF(6);
  @$pb.TagNumber(7)
  set executed($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExecuted() => $_has(6);
  @$pb.TagNumber(7)
  void clearExecuted() => clearField(7);
}

class DepositMsgState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DepositMsgState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgHeight')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'executed')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'succeeded')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toBeDeleted')
    ..aOM<$0.MsgDepositWithinBatch>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', subBuilder: $0.MsgDepositWithinBatch.create)
    ..hasRequiredFields = false
  ;

  DepositMsgState._() : super();
  factory DepositMsgState({
    $fixnum.Int64? msgHeight,
    $fixnum.Int64? msgIndex,
    $core.bool? executed,
    $core.bool? succeeded,
    $core.bool? toBeDeleted,
    $0.MsgDepositWithinBatch? msg,
  }) {
    final _result = create();
    if (msgHeight != null) {
      _result.msgHeight = msgHeight;
    }
    if (msgIndex != null) {
      _result.msgIndex = msgIndex;
    }
    if (executed != null) {
      _result.executed = executed;
    }
    if (succeeded != null) {
      _result.succeeded = succeeded;
    }
    if (toBeDeleted != null) {
      _result.toBeDeleted = toBeDeleted;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory DepositMsgState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DepositMsgState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DepositMsgState clone() => DepositMsgState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DepositMsgState copyWith(void Function(DepositMsgState) updates) => super.copyWith((message) => updates(message as DepositMsgState)) as DepositMsgState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DepositMsgState create() => DepositMsgState._();
  DepositMsgState createEmptyInstance() => create();
  static $pb.PbList<DepositMsgState> createRepeated() => $pb.PbList<DepositMsgState>();
  @$core.pragma('dart2js:noInline')
  static DepositMsgState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DepositMsgState>(create);
  static DepositMsgState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgHeight => $_getI64(0);
  @$pb.TagNumber(1)
  set msgHeight($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgHeight() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set msgIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get executed => $_getBF(2);
  @$pb.TagNumber(3)
  set executed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExecuted() => $_has(2);
  @$pb.TagNumber(3)
  void clearExecuted() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get succeeded => $_getBF(3);
  @$pb.TagNumber(4)
  set succeeded($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSucceeded() => $_has(3);
  @$pb.TagNumber(4)
  void clearSucceeded() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get toBeDeleted => $_getBF(4);
  @$pb.TagNumber(5)
  set toBeDeleted($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasToBeDeleted() => $_has(4);
  @$pb.TagNumber(5)
  void clearToBeDeleted() => clearField(5);

  @$pb.TagNumber(6)
  $0.MsgDepositWithinBatch get msg => $_getN(5);
  @$pb.TagNumber(6)
  set msg($0.MsgDepositWithinBatch v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMsg() => $_has(5);
  @$pb.TagNumber(6)
  void clearMsg() => clearField(6);
  @$pb.TagNumber(6)
  $0.MsgDepositWithinBatch ensureMsg() => $_ensure(5);
}

class WithdrawMsgState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WithdrawMsgState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgHeight')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'executed')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'succeeded')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toBeDeleted')
    ..aOM<$0.MsgWithdrawWithinBatch>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', subBuilder: $0.MsgWithdrawWithinBatch.create)
    ..hasRequiredFields = false
  ;

  WithdrawMsgState._() : super();
  factory WithdrawMsgState({
    $fixnum.Int64? msgHeight,
    $fixnum.Int64? msgIndex,
    $core.bool? executed,
    $core.bool? succeeded,
    $core.bool? toBeDeleted,
    $0.MsgWithdrawWithinBatch? msg,
  }) {
    final _result = create();
    if (msgHeight != null) {
      _result.msgHeight = msgHeight;
    }
    if (msgIndex != null) {
      _result.msgIndex = msgIndex;
    }
    if (executed != null) {
      _result.executed = executed;
    }
    if (succeeded != null) {
      _result.succeeded = succeeded;
    }
    if (toBeDeleted != null) {
      _result.toBeDeleted = toBeDeleted;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory WithdrawMsgState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawMsgState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithdrawMsgState clone() => WithdrawMsgState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithdrawMsgState copyWith(void Function(WithdrawMsgState) updates) => super.copyWith((message) => updates(message as WithdrawMsgState)) as WithdrawMsgState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WithdrawMsgState create() => WithdrawMsgState._();
  WithdrawMsgState createEmptyInstance() => create();
  static $pb.PbList<WithdrawMsgState> createRepeated() => $pb.PbList<WithdrawMsgState>();
  @$core.pragma('dart2js:noInline')
  static WithdrawMsgState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithdrawMsgState>(create);
  static WithdrawMsgState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgHeight => $_getI64(0);
  @$pb.TagNumber(1)
  set msgHeight($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgHeight() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set msgIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get executed => $_getBF(2);
  @$pb.TagNumber(3)
  set executed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExecuted() => $_has(2);
  @$pb.TagNumber(3)
  void clearExecuted() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get succeeded => $_getBF(3);
  @$pb.TagNumber(4)
  set succeeded($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSucceeded() => $_has(3);
  @$pb.TagNumber(4)
  void clearSucceeded() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get toBeDeleted => $_getBF(4);
  @$pb.TagNumber(5)
  set toBeDeleted($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasToBeDeleted() => $_has(4);
  @$pb.TagNumber(5)
  void clearToBeDeleted() => clearField(5);

  @$pb.TagNumber(6)
  $0.MsgWithdrawWithinBatch get msg => $_getN(5);
  @$pb.TagNumber(6)
  set msg($0.MsgWithdrawWithinBatch v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMsg() => $_has(5);
  @$pb.TagNumber(6)
  void clearMsg() => clearField(6);
  @$pb.TagNumber(6)
  $0.MsgWithdrawWithinBatch ensureMsg() => $_ensure(5);
}

class SwapMsgState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwapMsgState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgHeight')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'executed')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'succeeded')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toBeDeleted')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderExpiryHeight')
    ..aOM<$4.Coin>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exchangedOfferCoin', subBuilder: $4.Coin.create)
    ..aOM<$4.Coin>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remainingOfferCoin', subBuilder: $4.Coin.create)
    ..aOM<$4.Coin>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservedOfferCoinFee', subBuilder: $4.Coin.create)
    ..aOM<$0.MsgSwapWithinBatch>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', subBuilder: $0.MsgSwapWithinBatch.create)
    ..hasRequiredFields = false
  ;

  SwapMsgState._() : super();
  factory SwapMsgState({
    $fixnum.Int64? msgHeight,
    $fixnum.Int64? msgIndex,
    $core.bool? executed,
    $core.bool? succeeded,
    $core.bool? toBeDeleted,
    $fixnum.Int64? orderExpiryHeight,
    $4.Coin? exchangedOfferCoin,
    $4.Coin? remainingOfferCoin,
    $4.Coin? reservedOfferCoinFee,
    $0.MsgSwapWithinBatch? msg,
  }) {
    final _result = create();
    if (msgHeight != null) {
      _result.msgHeight = msgHeight;
    }
    if (msgIndex != null) {
      _result.msgIndex = msgIndex;
    }
    if (executed != null) {
      _result.executed = executed;
    }
    if (succeeded != null) {
      _result.succeeded = succeeded;
    }
    if (toBeDeleted != null) {
      _result.toBeDeleted = toBeDeleted;
    }
    if (orderExpiryHeight != null) {
      _result.orderExpiryHeight = orderExpiryHeight;
    }
    if (exchangedOfferCoin != null) {
      _result.exchangedOfferCoin = exchangedOfferCoin;
    }
    if (remainingOfferCoin != null) {
      _result.remainingOfferCoin = remainingOfferCoin;
    }
    if (reservedOfferCoinFee != null) {
      _result.reservedOfferCoinFee = reservedOfferCoinFee;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory SwapMsgState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwapMsgState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwapMsgState clone() => SwapMsgState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwapMsgState copyWith(void Function(SwapMsgState) updates) => super.copyWith((message) => updates(message as SwapMsgState)) as SwapMsgState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwapMsgState create() => SwapMsgState._();
  SwapMsgState createEmptyInstance() => create();
  static $pb.PbList<SwapMsgState> createRepeated() => $pb.PbList<SwapMsgState>();
  @$core.pragma('dart2js:noInline')
  static SwapMsgState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwapMsgState>(create);
  static SwapMsgState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgHeight => $_getI64(0);
  @$pb.TagNumber(1)
  set msgHeight($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgHeight() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set msgIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get executed => $_getBF(2);
  @$pb.TagNumber(3)
  set executed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExecuted() => $_has(2);
  @$pb.TagNumber(3)
  void clearExecuted() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get succeeded => $_getBF(3);
  @$pb.TagNumber(4)
  set succeeded($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSucceeded() => $_has(3);
  @$pb.TagNumber(4)
  void clearSucceeded() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get toBeDeleted => $_getBF(4);
  @$pb.TagNumber(5)
  set toBeDeleted($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasToBeDeleted() => $_has(4);
  @$pb.TagNumber(5)
  void clearToBeDeleted() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get orderExpiryHeight => $_getI64(5);
  @$pb.TagNumber(6)
  set orderExpiryHeight($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOrderExpiryHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrderExpiryHeight() => clearField(6);

  @$pb.TagNumber(7)
  $4.Coin get exchangedOfferCoin => $_getN(6);
  @$pb.TagNumber(7)
  set exchangedOfferCoin($4.Coin v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasExchangedOfferCoin() => $_has(6);
  @$pb.TagNumber(7)
  void clearExchangedOfferCoin() => clearField(7);
  @$pb.TagNumber(7)
  $4.Coin ensureExchangedOfferCoin() => $_ensure(6);

  @$pb.TagNumber(8)
  $4.Coin get remainingOfferCoin => $_getN(7);
  @$pb.TagNumber(8)
  set remainingOfferCoin($4.Coin v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasRemainingOfferCoin() => $_has(7);
  @$pb.TagNumber(8)
  void clearRemainingOfferCoin() => clearField(8);
  @$pb.TagNumber(8)
  $4.Coin ensureRemainingOfferCoin() => $_ensure(7);

  @$pb.TagNumber(9)
  $4.Coin get reservedOfferCoinFee => $_getN(8);
  @$pb.TagNumber(9)
  set reservedOfferCoinFee($4.Coin v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasReservedOfferCoinFee() => $_has(8);
  @$pb.TagNumber(9)
  void clearReservedOfferCoinFee() => clearField(9);
  @$pb.TagNumber(9)
  $4.Coin ensureReservedOfferCoinFee() => $_ensure(8);

  @$pb.TagNumber(10)
  $0.MsgSwapWithinBatch get msg => $_getN(9);
  @$pb.TagNumber(10)
  set msg($0.MsgSwapWithinBatch v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasMsg() => $_has(9);
  @$pb.TagNumber(10)
  void clearMsg() => clearField(10);
  @$pb.TagNumber(10)
  $0.MsgSwapWithinBatch ensureMsg() => $_ensure(9);
}

