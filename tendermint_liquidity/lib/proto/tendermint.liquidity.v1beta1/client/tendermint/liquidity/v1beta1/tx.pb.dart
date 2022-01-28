///
//  Generated code. Do not modify.
//  source: tendermint/liquidity/v1beta1/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../cosmos_proto/coin.pb.dart' as $4;

class MsgCreatePool extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgCreatePool', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolCreatorAddress')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolTypeId', $pb.PbFieldType.OU3)
    ..pc<$4.Coin>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'depositCoins', $pb.PbFieldType.PM, subBuilder: $4.Coin.create)
    ..hasRequiredFields = false
  ;

  MsgCreatePool._() : super();
  factory MsgCreatePool({
    $core.String? poolCreatorAddress,
    $core.int? poolTypeId,
    $core.Iterable<$4.Coin>? depositCoins,
  }) {
    final _result = create();
    if (poolCreatorAddress != null) {
      _result.poolCreatorAddress = poolCreatorAddress;
    }
    if (poolTypeId != null) {
      _result.poolTypeId = poolTypeId;
    }
    if (depositCoins != null) {
      _result.depositCoins.addAll(depositCoins);
    }
    return _result;
  }
  factory MsgCreatePool.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreatePool.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreatePool clone() => MsgCreatePool()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreatePool copyWith(void Function(MsgCreatePool) updates) => super.copyWith((message) => updates(message as MsgCreatePool)) as MsgCreatePool; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgCreatePool create() => MsgCreatePool._();
  MsgCreatePool createEmptyInstance() => create();
  static $pb.PbList<MsgCreatePool> createRepeated() => $pb.PbList<MsgCreatePool>();
  @$core.pragma('dart2js:noInline')
  static MsgCreatePool getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreatePool>(create);
  static MsgCreatePool? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get poolCreatorAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set poolCreatorAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolCreatorAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolCreatorAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get poolTypeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set poolTypeId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPoolTypeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoolTypeId() => clearField(2);

  @$pb.TagNumber(4)
  $core.List<$4.Coin> get depositCoins => $_getList(2);
}

class MsgCreatePoolResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgCreatePoolResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgCreatePoolResponse._() : super();
  factory MsgCreatePoolResponse() => create();
  factory MsgCreatePoolResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreatePoolResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreatePoolResponse clone() => MsgCreatePoolResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreatePoolResponse copyWith(void Function(MsgCreatePoolResponse) updates) => super.copyWith((message) => updates(message as MsgCreatePoolResponse)) as MsgCreatePoolResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgCreatePoolResponse create() => MsgCreatePoolResponse._();
  MsgCreatePoolResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCreatePoolResponse> createRepeated() => $pb.PbList<MsgCreatePoolResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCreatePoolResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreatePoolResponse>(create);
  static MsgCreatePoolResponse? _defaultInstance;
}

class MsgDepositWithinBatch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgDepositWithinBatch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'depositorAddress')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$4.Coin>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'depositCoins', $pb.PbFieldType.PM, subBuilder: $4.Coin.create)
    ..hasRequiredFields = false
  ;

  MsgDepositWithinBatch._() : super();
  factory MsgDepositWithinBatch({
    $core.String? depositorAddress,
    $fixnum.Int64? poolId,
    $core.Iterable<$4.Coin>? depositCoins,
  }) {
    final _result = create();
    if (depositorAddress != null) {
      _result.depositorAddress = depositorAddress;
    }
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (depositCoins != null) {
      _result.depositCoins.addAll(depositCoins);
    }
    return _result;
  }
  factory MsgDepositWithinBatch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDepositWithinBatch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDepositWithinBatch clone() => MsgDepositWithinBatch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDepositWithinBatch copyWith(void Function(MsgDepositWithinBatch) updates) => super.copyWith((message) => updates(message as MsgDepositWithinBatch)) as MsgDepositWithinBatch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgDepositWithinBatch create() => MsgDepositWithinBatch._();
  MsgDepositWithinBatch createEmptyInstance() => create();
  static $pb.PbList<MsgDepositWithinBatch> createRepeated() => $pb.PbList<MsgDepositWithinBatch>();
  @$core.pragma('dart2js:noInline')
  static MsgDepositWithinBatch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDepositWithinBatch>(create);
  static MsgDepositWithinBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get depositorAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set depositorAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDepositorAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearDepositorAddress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get poolId => $_getI64(1);
  @$pb.TagNumber(2)
  set poolId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPoolId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoolId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$4.Coin> get depositCoins => $_getList(2);
}

class MsgDepositWithinBatchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgDepositWithinBatchResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgDepositWithinBatchResponse._() : super();
  factory MsgDepositWithinBatchResponse() => create();
  factory MsgDepositWithinBatchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDepositWithinBatchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDepositWithinBatchResponse clone() => MsgDepositWithinBatchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDepositWithinBatchResponse copyWith(void Function(MsgDepositWithinBatchResponse) updates) => super.copyWith((message) => updates(message as MsgDepositWithinBatchResponse)) as MsgDepositWithinBatchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgDepositWithinBatchResponse create() => MsgDepositWithinBatchResponse._();
  MsgDepositWithinBatchResponse createEmptyInstance() => create();
  static $pb.PbList<MsgDepositWithinBatchResponse> createRepeated() => $pb.PbList<MsgDepositWithinBatchResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgDepositWithinBatchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDepositWithinBatchResponse>(create);
  static MsgDepositWithinBatchResponse? _defaultInstance;
}

class MsgWithdrawWithinBatch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgWithdrawWithinBatch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withdrawerAddress')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$4.Coin>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolCoin', subBuilder: $4.Coin.create)
    ..hasRequiredFields = false
  ;

  MsgWithdrawWithinBatch._() : super();
  factory MsgWithdrawWithinBatch({
    $core.String? withdrawerAddress,
    $fixnum.Int64? poolId,
    $4.Coin? poolCoin,
  }) {
    final _result = create();
    if (withdrawerAddress != null) {
      _result.withdrawerAddress = withdrawerAddress;
    }
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (poolCoin != null) {
      _result.poolCoin = poolCoin;
    }
    return _result;
  }
  factory MsgWithdrawWithinBatch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgWithdrawWithinBatch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgWithdrawWithinBatch clone() => MsgWithdrawWithinBatch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgWithdrawWithinBatch copyWith(void Function(MsgWithdrawWithinBatch) updates) => super.copyWith((message) => updates(message as MsgWithdrawWithinBatch)) as MsgWithdrawWithinBatch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgWithdrawWithinBatch create() => MsgWithdrawWithinBatch._();
  MsgWithdrawWithinBatch createEmptyInstance() => create();
  static $pb.PbList<MsgWithdrawWithinBatch> createRepeated() => $pb.PbList<MsgWithdrawWithinBatch>();
  @$core.pragma('dart2js:noInline')
  static MsgWithdrawWithinBatch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgWithdrawWithinBatch>(create);
  static MsgWithdrawWithinBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get withdrawerAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set withdrawerAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWithdrawerAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearWithdrawerAddress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get poolId => $_getI64(1);
  @$pb.TagNumber(2)
  set poolId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPoolId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoolId() => clearField(2);

  @$pb.TagNumber(3)
  $4.Coin get poolCoin => $_getN(2);
  @$pb.TagNumber(3)
  set poolCoin($4.Coin v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPoolCoin() => $_has(2);
  @$pb.TagNumber(3)
  void clearPoolCoin() => clearField(3);
  @$pb.TagNumber(3)
  $4.Coin ensurePoolCoin() => $_ensure(2);
}

class MsgWithdrawWithinBatchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgWithdrawWithinBatchResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgWithdrawWithinBatchResponse._() : super();
  factory MsgWithdrawWithinBatchResponse() => create();
  factory MsgWithdrawWithinBatchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgWithdrawWithinBatchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgWithdrawWithinBatchResponse clone() => MsgWithdrawWithinBatchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgWithdrawWithinBatchResponse copyWith(void Function(MsgWithdrawWithinBatchResponse) updates) => super.copyWith((message) => updates(message as MsgWithdrawWithinBatchResponse)) as MsgWithdrawWithinBatchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgWithdrawWithinBatchResponse create() => MsgWithdrawWithinBatchResponse._();
  MsgWithdrawWithinBatchResponse createEmptyInstance() => create();
  static $pb.PbList<MsgWithdrawWithinBatchResponse> createRepeated() => $pb.PbList<MsgWithdrawWithinBatchResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgWithdrawWithinBatchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgWithdrawWithinBatchResponse>(create);
  static MsgWithdrawWithinBatchResponse? _defaultInstance;
}

class MsgSwapWithinBatch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgSwapWithinBatch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swapRequesterAddress')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swapTypeId', $pb.PbFieldType.OU3)
    ..aOM<$4.Coin>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offerCoin', subBuilder: $4.Coin.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'demandCoinDenom')
    ..aOM<$4.Coin>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offerCoinFee', subBuilder: $4.Coin.create)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderPrice')
    ..hasRequiredFields = false
  ;

  MsgSwapWithinBatch._() : super();
  factory MsgSwapWithinBatch({
    $core.String? swapRequesterAddress,
    $fixnum.Int64? poolId,
    $core.int? swapTypeId,
    $4.Coin? offerCoin,
    $core.String? demandCoinDenom,
    $4.Coin? offerCoinFee,
    $core.String? orderPrice,
  }) {
    final _result = create();
    if (swapRequesterAddress != null) {
      _result.swapRequesterAddress = swapRequesterAddress;
    }
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (swapTypeId != null) {
      _result.swapTypeId = swapTypeId;
    }
    if (offerCoin != null) {
      _result.offerCoin = offerCoin;
    }
    if (demandCoinDenom != null) {
      _result.demandCoinDenom = demandCoinDenom;
    }
    if (offerCoinFee != null) {
      _result.offerCoinFee = offerCoinFee;
    }
    if (orderPrice != null) {
      _result.orderPrice = orderPrice;
    }
    return _result;
  }
  factory MsgSwapWithinBatch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSwapWithinBatch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSwapWithinBatch clone() => MsgSwapWithinBatch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSwapWithinBatch copyWith(void Function(MsgSwapWithinBatch) updates) => super.copyWith((message) => updates(message as MsgSwapWithinBatch)) as MsgSwapWithinBatch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgSwapWithinBatch create() => MsgSwapWithinBatch._();
  MsgSwapWithinBatch createEmptyInstance() => create();
  static $pb.PbList<MsgSwapWithinBatch> createRepeated() => $pb.PbList<MsgSwapWithinBatch>();
  @$core.pragma('dart2js:noInline')
  static MsgSwapWithinBatch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSwapWithinBatch>(create);
  static MsgSwapWithinBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get swapRequesterAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set swapRequesterAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwapRequesterAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwapRequesterAddress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get poolId => $_getI64(1);
  @$pb.TagNumber(2)
  set poolId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPoolId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoolId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get swapTypeId => $_getIZ(2);
  @$pb.TagNumber(3)
  set swapTypeId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSwapTypeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwapTypeId() => clearField(3);

  @$pb.TagNumber(4)
  $4.Coin get offerCoin => $_getN(3);
  @$pb.TagNumber(4)
  set offerCoin($4.Coin v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOfferCoin() => $_has(3);
  @$pb.TagNumber(4)
  void clearOfferCoin() => clearField(4);
  @$pb.TagNumber(4)
  $4.Coin ensureOfferCoin() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get demandCoinDenom => $_getSZ(4);
  @$pb.TagNumber(5)
  set demandCoinDenom($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDemandCoinDenom() => $_has(4);
  @$pb.TagNumber(5)
  void clearDemandCoinDenom() => clearField(5);

  @$pb.TagNumber(6)
  $4.Coin get offerCoinFee => $_getN(5);
  @$pb.TagNumber(6)
  set offerCoinFee($4.Coin v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasOfferCoinFee() => $_has(5);
  @$pb.TagNumber(6)
  void clearOfferCoinFee() => clearField(6);
  @$pb.TagNumber(6)
  $4.Coin ensureOfferCoinFee() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get orderPrice => $_getSZ(6);
  @$pb.TagNumber(7)
  set orderPrice($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOrderPrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrderPrice() => clearField(7);
}

class MsgSwapWithinBatchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgSwapWithinBatchResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgSwapWithinBatchResponse._() : super();
  factory MsgSwapWithinBatchResponse() => create();
  factory MsgSwapWithinBatchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSwapWithinBatchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSwapWithinBatchResponse clone() => MsgSwapWithinBatchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSwapWithinBatchResponse copyWith(void Function(MsgSwapWithinBatchResponse) updates) => super.copyWith((message) => updates(message as MsgSwapWithinBatchResponse)) as MsgSwapWithinBatchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgSwapWithinBatchResponse create() => MsgSwapWithinBatchResponse._();
  MsgSwapWithinBatchResponse createEmptyInstance() => create();
  static $pb.PbList<MsgSwapWithinBatchResponse> createRepeated() => $pb.PbList<MsgSwapWithinBatchResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgSwapWithinBatchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSwapWithinBatchResponse>(create);
  static MsgSwapWithinBatchResponse? _defaultInstance;
}

