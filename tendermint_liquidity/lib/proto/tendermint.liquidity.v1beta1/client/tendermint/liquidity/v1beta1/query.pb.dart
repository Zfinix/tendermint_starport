///
//  Generated code. Do not modify.
//  source: tendermint/liquidity/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'liquidity.pb.dart' as $5;
import '../../../cosmos_proto/pagination.pb.dart' as $7;

class QueryLiquidityPoolRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryLiquidityPoolRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QueryLiquidityPoolRequest._() : super();
  factory QueryLiquidityPoolRequest({
    $fixnum.Int64? poolId,
  }) {
    final _result = create();
    if (poolId != null) {
      _result.poolId = poolId;
    }
    return _result;
  }
  factory QueryLiquidityPoolRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryLiquidityPoolRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolRequest clone() => QueryLiquidityPoolRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolRequest copyWith(void Function(QueryLiquidityPoolRequest) updates) => super.copyWith((message) => updates(message as QueryLiquidityPoolRequest)) as QueryLiquidityPoolRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolRequest create() => QueryLiquidityPoolRequest._();
  QueryLiquidityPoolRequest createEmptyInstance() => create();
  static $pb.PbList<QueryLiquidityPoolRequest> createRepeated() => $pb.PbList<QueryLiquidityPoolRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryLiquidityPoolRequest>(create);
  static QueryLiquidityPoolRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get poolId => $_getI64(0);
  @$pb.TagNumber(1)
  set poolId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolId() => clearField(1);
}

class QueryLiquidityPoolResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryLiquidityPoolResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOM<$5.Pool>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pool', subBuilder: $5.Pool.create)
    ..hasRequiredFields = false
  ;

  QueryLiquidityPoolResponse._() : super();
  factory QueryLiquidityPoolResponse({
    $5.Pool? pool,
  }) {
    final _result = create();
    if (pool != null) {
      _result.pool = pool;
    }
    return _result;
  }
  factory QueryLiquidityPoolResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryLiquidityPoolResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolResponse clone() => QueryLiquidityPoolResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolResponse copyWith(void Function(QueryLiquidityPoolResponse) updates) => super.copyWith((message) => updates(message as QueryLiquidityPoolResponse)) as QueryLiquidityPoolResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolResponse create() => QueryLiquidityPoolResponse._();
  QueryLiquidityPoolResponse createEmptyInstance() => create();
  static $pb.PbList<QueryLiquidityPoolResponse> createRepeated() => $pb.PbList<QueryLiquidityPoolResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryLiquidityPoolResponse>(create);
  static QueryLiquidityPoolResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Pool get pool => $_getN(0);
  @$pb.TagNumber(1)
  set pool($5.Pool v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPool() => $_has(0);
  @$pb.TagNumber(1)
  void clearPool() => clearField(1);
  @$pb.TagNumber(1)
  $5.Pool ensurePool() => $_ensure(0);
}

class QueryLiquidityPoolByPoolCoinDenomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryLiquidityPoolByPoolCoinDenomRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolCoinDenom')
    ..hasRequiredFields = false
  ;

  QueryLiquidityPoolByPoolCoinDenomRequest._() : super();
  factory QueryLiquidityPoolByPoolCoinDenomRequest({
    $core.String? poolCoinDenom,
  }) {
    final _result = create();
    if (poolCoinDenom != null) {
      _result.poolCoinDenom = poolCoinDenom;
    }
    return _result;
  }
  factory QueryLiquidityPoolByPoolCoinDenomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryLiquidityPoolByPoolCoinDenomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolByPoolCoinDenomRequest clone() => QueryLiquidityPoolByPoolCoinDenomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolByPoolCoinDenomRequest copyWith(void Function(QueryLiquidityPoolByPoolCoinDenomRequest) updates) => super.copyWith((message) => updates(message as QueryLiquidityPoolByPoolCoinDenomRequest)) as QueryLiquidityPoolByPoolCoinDenomRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolByPoolCoinDenomRequest create() => QueryLiquidityPoolByPoolCoinDenomRequest._();
  QueryLiquidityPoolByPoolCoinDenomRequest createEmptyInstance() => create();
  static $pb.PbList<QueryLiquidityPoolByPoolCoinDenomRequest> createRepeated() => $pb.PbList<QueryLiquidityPoolByPoolCoinDenomRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolByPoolCoinDenomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryLiquidityPoolByPoolCoinDenomRequest>(create);
  static QueryLiquidityPoolByPoolCoinDenomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get poolCoinDenom => $_getSZ(0);
  @$pb.TagNumber(1)
  set poolCoinDenom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolCoinDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolCoinDenom() => clearField(1);
}

class QueryLiquidityPoolByReserveAccRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryLiquidityPoolByReserveAccRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reserveAcc')
    ..hasRequiredFields = false
  ;

  QueryLiquidityPoolByReserveAccRequest._() : super();
  factory QueryLiquidityPoolByReserveAccRequest({
    $core.String? reserveAcc,
  }) {
    final _result = create();
    if (reserveAcc != null) {
      _result.reserveAcc = reserveAcc;
    }
    return _result;
  }
  factory QueryLiquidityPoolByReserveAccRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryLiquidityPoolByReserveAccRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolByReserveAccRequest clone() => QueryLiquidityPoolByReserveAccRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolByReserveAccRequest copyWith(void Function(QueryLiquidityPoolByReserveAccRequest) updates) => super.copyWith((message) => updates(message as QueryLiquidityPoolByReserveAccRequest)) as QueryLiquidityPoolByReserveAccRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolByReserveAccRequest create() => QueryLiquidityPoolByReserveAccRequest._();
  QueryLiquidityPoolByReserveAccRequest createEmptyInstance() => create();
  static $pb.PbList<QueryLiquidityPoolByReserveAccRequest> createRepeated() => $pb.PbList<QueryLiquidityPoolByReserveAccRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolByReserveAccRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryLiquidityPoolByReserveAccRequest>(create);
  static QueryLiquidityPoolByReserveAccRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get reserveAcc => $_getSZ(0);
  @$pb.TagNumber(1)
  set reserveAcc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReserveAcc() => $_has(0);
  @$pb.TagNumber(1)
  void clearReserveAcc() => clearField(1);
}

class QueryLiquidityPoolBatchRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryLiquidityPoolBatchRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QueryLiquidityPoolBatchRequest._() : super();
  factory QueryLiquidityPoolBatchRequest({
    $fixnum.Int64? poolId,
  }) {
    final _result = create();
    if (poolId != null) {
      _result.poolId = poolId;
    }
    return _result;
  }
  factory QueryLiquidityPoolBatchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryLiquidityPoolBatchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolBatchRequest clone() => QueryLiquidityPoolBatchRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolBatchRequest copyWith(void Function(QueryLiquidityPoolBatchRequest) updates) => super.copyWith((message) => updates(message as QueryLiquidityPoolBatchRequest)) as QueryLiquidityPoolBatchRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolBatchRequest create() => QueryLiquidityPoolBatchRequest._();
  QueryLiquidityPoolBatchRequest createEmptyInstance() => create();
  static $pb.PbList<QueryLiquidityPoolBatchRequest> createRepeated() => $pb.PbList<QueryLiquidityPoolBatchRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolBatchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryLiquidityPoolBatchRequest>(create);
  static QueryLiquidityPoolBatchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get poolId => $_getI64(0);
  @$pb.TagNumber(1)
  set poolId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolId() => clearField(1);
}

class QueryLiquidityPoolBatchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryLiquidityPoolBatchResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOM<$5.PoolBatch>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'batch', subBuilder: $5.PoolBatch.create)
    ..hasRequiredFields = false
  ;

  QueryLiquidityPoolBatchResponse._() : super();
  factory QueryLiquidityPoolBatchResponse({
    $5.PoolBatch? batch,
  }) {
    final _result = create();
    if (batch != null) {
      _result.batch = batch;
    }
    return _result;
  }
  factory QueryLiquidityPoolBatchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryLiquidityPoolBatchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolBatchResponse clone() => QueryLiquidityPoolBatchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolBatchResponse copyWith(void Function(QueryLiquidityPoolBatchResponse) updates) => super.copyWith((message) => updates(message as QueryLiquidityPoolBatchResponse)) as QueryLiquidityPoolBatchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolBatchResponse create() => QueryLiquidityPoolBatchResponse._();
  QueryLiquidityPoolBatchResponse createEmptyInstance() => create();
  static $pb.PbList<QueryLiquidityPoolBatchResponse> createRepeated() => $pb.PbList<QueryLiquidityPoolBatchResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolBatchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryLiquidityPoolBatchResponse>(create);
  static QueryLiquidityPoolBatchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.PoolBatch get batch => $_getN(0);
  @$pb.TagNumber(1)
  set batch($5.PoolBatch v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBatch() => $_has(0);
  @$pb.TagNumber(1)
  void clearBatch() => clearField(1);
  @$pb.TagNumber(1)
  $5.PoolBatch ensureBatch() => $_ensure(0);
}

class QueryLiquidityPoolsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryLiquidityPoolsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOM<$7.PageRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $7.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryLiquidityPoolsRequest._() : super();
  factory QueryLiquidityPoolsRequest({
    $7.PageRequest? pagination,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryLiquidityPoolsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryLiquidityPoolsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolsRequest clone() => QueryLiquidityPoolsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolsRequest copyWith(void Function(QueryLiquidityPoolsRequest) updates) => super.copyWith((message) => updates(message as QueryLiquidityPoolsRequest)) as QueryLiquidityPoolsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolsRequest create() => QueryLiquidityPoolsRequest._();
  QueryLiquidityPoolsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryLiquidityPoolsRequest> createRepeated() => $pb.PbList<QueryLiquidityPoolsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryLiquidityPoolsRequest>(create);
  static QueryLiquidityPoolsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $7.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($7.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $7.PageRequest ensurePagination() => $_ensure(0);
}

class QueryLiquidityPoolsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryLiquidityPoolsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..pc<$5.Pool>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pools', $pb.PbFieldType.PM, subBuilder: $5.Pool.create)
    ..aOM<$7.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $7.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryLiquidityPoolsResponse._() : super();
  factory QueryLiquidityPoolsResponse({
    $core.Iterable<$5.Pool>? pools,
    $7.PageResponse? pagination,
  }) {
    final _result = create();
    if (pools != null) {
      _result.pools.addAll(pools);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryLiquidityPoolsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryLiquidityPoolsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolsResponse clone() => QueryLiquidityPoolsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryLiquidityPoolsResponse copyWith(void Function(QueryLiquidityPoolsResponse) updates) => super.copyWith((message) => updates(message as QueryLiquidityPoolsResponse)) as QueryLiquidityPoolsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolsResponse create() => QueryLiquidityPoolsResponse._();
  QueryLiquidityPoolsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryLiquidityPoolsResponse> createRepeated() => $pb.PbList<QueryLiquidityPoolsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryLiquidityPoolsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryLiquidityPoolsResponse>(create);
  static QueryLiquidityPoolsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Pool> get pools => $_getList(0);

  @$pb.TagNumber(2)
  $7.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($7.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $7.PageResponse ensurePagination() => $_ensure(1);
}

class QueryParamsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryParamsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  QueryParamsRequest._() : super();
  factory QueryParamsRequest() => create();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsRequest clone() => QueryParamsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsRequest copyWith(void Function(QueryParamsRequest) updates) => super.copyWith((message) => updates(message as QueryParamsRequest)) as QueryParamsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest create() => QueryParamsRequest._();
  QueryParamsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryParamsRequest> createRepeated() => $pb.PbList<QueryParamsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsRequest>(create);
  static QueryParamsRequest? _defaultInstance;
}

class QueryParamsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryParamsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOM<$5.Params>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $5.Params.create)
    ..hasRequiredFields = false
  ;

  QueryParamsResponse._() : super();
  factory QueryParamsResponse({
    $5.Params? params,
  }) {
    final _result = create();
    if (params != null) {
      _result.params = params;
    }
    return _result;
  }
  factory QueryParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsResponse clone() => QueryParamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsResponse copyWith(void Function(QueryParamsResponse) updates) => super.copyWith((message) => updates(message as QueryParamsResponse)) as QueryParamsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse create() => QueryParamsResponse._();
  QueryParamsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryParamsResponse> createRepeated() => $pb.PbList<QueryParamsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsResponse>(create);
  static QueryParamsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($5.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $5.Params ensureParams() => $_ensure(0);
}

class QueryPoolBatchSwapMsgsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchSwapMsgsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.PageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $7.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchSwapMsgsRequest._() : super();
  factory QueryPoolBatchSwapMsgsRequest({
    $fixnum.Int64? poolId,
    $7.PageRequest? pagination,
  }) {
    final _result = create();
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryPoolBatchSwapMsgsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchSwapMsgsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchSwapMsgsRequest clone() => QueryPoolBatchSwapMsgsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchSwapMsgsRequest copyWith(void Function(QueryPoolBatchSwapMsgsRequest) updates) => super.copyWith((message) => updates(message as QueryPoolBatchSwapMsgsRequest)) as QueryPoolBatchSwapMsgsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchSwapMsgsRequest create() => QueryPoolBatchSwapMsgsRequest._();
  QueryPoolBatchSwapMsgsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchSwapMsgsRequest> createRepeated() => $pb.PbList<QueryPoolBatchSwapMsgsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchSwapMsgsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchSwapMsgsRequest>(create);
  static QueryPoolBatchSwapMsgsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get poolId => $_getI64(0);
  @$pb.TagNumber(1)
  set poolId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolId() => clearField(1);

  @$pb.TagNumber(2)
  $7.PageRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($7.PageRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $7.PageRequest ensurePagination() => $_ensure(1);
}

class QueryPoolBatchSwapMsgRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchSwapMsgRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchSwapMsgRequest._() : super();
  factory QueryPoolBatchSwapMsgRequest({
    $fixnum.Int64? poolId,
    $fixnum.Int64? msgIndex,
  }) {
    final _result = create();
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (msgIndex != null) {
      _result.msgIndex = msgIndex;
    }
    return _result;
  }
  factory QueryPoolBatchSwapMsgRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchSwapMsgRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchSwapMsgRequest clone() => QueryPoolBatchSwapMsgRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchSwapMsgRequest copyWith(void Function(QueryPoolBatchSwapMsgRequest) updates) => super.copyWith((message) => updates(message as QueryPoolBatchSwapMsgRequest)) as QueryPoolBatchSwapMsgRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchSwapMsgRequest create() => QueryPoolBatchSwapMsgRequest._();
  QueryPoolBatchSwapMsgRequest createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchSwapMsgRequest> createRepeated() => $pb.PbList<QueryPoolBatchSwapMsgRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchSwapMsgRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchSwapMsgRequest>(create);
  static QueryPoolBatchSwapMsgRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get poolId => $_getI64(0);
  @$pb.TagNumber(1)
  set poolId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set msgIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgIndex() => clearField(2);
}

class QueryPoolBatchSwapMsgsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchSwapMsgsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..pc<$5.SwapMsgState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swaps', $pb.PbFieldType.PM, subBuilder: $5.SwapMsgState.create)
    ..aOM<$7.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $7.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchSwapMsgsResponse._() : super();
  factory QueryPoolBatchSwapMsgsResponse({
    $core.Iterable<$5.SwapMsgState>? swaps,
    $7.PageResponse? pagination,
  }) {
    final _result = create();
    if (swaps != null) {
      _result.swaps.addAll(swaps);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryPoolBatchSwapMsgsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchSwapMsgsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchSwapMsgsResponse clone() => QueryPoolBatchSwapMsgsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchSwapMsgsResponse copyWith(void Function(QueryPoolBatchSwapMsgsResponse) updates) => super.copyWith((message) => updates(message as QueryPoolBatchSwapMsgsResponse)) as QueryPoolBatchSwapMsgsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchSwapMsgsResponse create() => QueryPoolBatchSwapMsgsResponse._();
  QueryPoolBatchSwapMsgsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchSwapMsgsResponse> createRepeated() => $pb.PbList<QueryPoolBatchSwapMsgsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchSwapMsgsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchSwapMsgsResponse>(create);
  static QueryPoolBatchSwapMsgsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.SwapMsgState> get swaps => $_getList(0);

  @$pb.TagNumber(2)
  $7.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($7.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $7.PageResponse ensurePagination() => $_ensure(1);
}

class QueryPoolBatchSwapMsgResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchSwapMsgResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOM<$5.SwapMsgState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swap', subBuilder: $5.SwapMsgState.create)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchSwapMsgResponse._() : super();
  factory QueryPoolBatchSwapMsgResponse({
    $5.SwapMsgState? swap,
  }) {
    final _result = create();
    if (swap != null) {
      _result.swap = swap;
    }
    return _result;
  }
  factory QueryPoolBatchSwapMsgResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchSwapMsgResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchSwapMsgResponse clone() => QueryPoolBatchSwapMsgResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchSwapMsgResponse copyWith(void Function(QueryPoolBatchSwapMsgResponse) updates) => super.copyWith((message) => updates(message as QueryPoolBatchSwapMsgResponse)) as QueryPoolBatchSwapMsgResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchSwapMsgResponse create() => QueryPoolBatchSwapMsgResponse._();
  QueryPoolBatchSwapMsgResponse createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchSwapMsgResponse> createRepeated() => $pb.PbList<QueryPoolBatchSwapMsgResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchSwapMsgResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchSwapMsgResponse>(create);
  static QueryPoolBatchSwapMsgResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.SwapMsgState get swap => $_getN(0);
  @$pb.TagNumber(1)
  set swap($5.SwapMsgState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwap() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwap() => clearField(1);
  @$pb.TagNumber(1)
  $5.SwapMsgState ensureSwap() => $_ensure(0);
}

class QueryPoolBatchDepositMsgsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchDepositMsgsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.PageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $7.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchDepositMsgsRequest._() : super();
  factory QueryPoolBatchDepositMsgsRequest({
    $fixnum.Int64? poolId,
    $7.PageRequest? pagination,
  }) {
    final _result = create();
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryPoolBatchDepositMsgsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchDepositMsgsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchDepositMsgsRequest clone() => QueryPoolBatchDepositMsgsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchDepositMsgsRequest copyWith(void Function(QueryPoolBatchDepositMsgsRequest) updates) => super.copyWith((message) => updates(message as QueryPoolBatchDepositMsgsRequest)) as QueryPoolBatchDepositMsgsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchDepositMsgsRequest create() => QueryPoolBatchDepositMsgsRequest._();
  QueryPoolBatchDepositMsgsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchDepositMsgsRequest> createRepeated() => $pb.PbList<QueryPoolBatchDepositMsgsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchDepositMsgsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchDepositMsgsRequest>(create);
  static QueryPoolBatchDepositMsgsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get poolId => $_getI64(0);
  @$pb.TagNumber(1)
  set poolId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolId() => clearField(1);

  @$pb.TagNumber(2)
  $7.PageRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($7.PageRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $7.PageRequest ensurePagination() => $_ensure(1);
}

class QueryPoolBatchDepositMsgRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchDepositMsgRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchDepositMsgRequest._() : super();
  factory QueryPoolBatchDepositMsgRequest({
    $fixnum.Int64? poolId,
    $fixnum.Int64? msgIndex,
  }) {
    final _result = create();
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (msgIndex != null) {
      _result.msgIndex = msgIndex;
    }
    return _result;
  }
  factory QueryPoolBatchDepositMsgRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchDepositMsgRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchDepositMsgRequest clone() => QueryPoolBatchDepositMsgRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchDepositMsgRequest copyWith(void Function(QueryPoolBatchDepositMsgRequest) updates) => super.copyWith((message) => updates(message as QueryPoolBatchDepositMsgRequest)) as QueryPoolBatchDepositMsgRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchDepositMsgRequest create() => QueryPoolBatchDepositMsgRequest._();
  QueryPoolBatchDepositMsgRequest createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchDepositMsgRequest> createRepeated() => $pb.PbList<QueryPoolBatchDepositMsgRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchDepositMsgRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchDepositMsgRequest>(create);
  static QueryPoolBatchDepositMsgRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get poolId => $_getI64(0);
  @$pb.TagNumber(1)
  set poolId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set msgIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgIndex() => clearField(2);
}

class QueryPoolBatchDepositMsgsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchDepositMsgsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..pc<$5.DepositMsgState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deposits', $pb.PbFieldType.PM, subBuilder: $5.DepositMsgState.create)
    ..aOM<$7.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $7.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchDepositMsgsResponse._() : super();
  factory QueryPoolBatchDepositMsgsResponse({
    $core.Iterable<$5.DepositMsgState>? deposits,
    $7.PageResponse? pagination,
  }) {
    final _result = create();
    if (deposits != null) {
      _result.deposits.addAll(deposits);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryPoolBatchDepositMsgsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchDepositMsgsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchDepositMsgsResponse clone() => QueryPoolBatchDepositMsgsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchDepositMsgsResponse copyWith(void Function(QueryPoolBatchDepositMsgsResponse) updates) => super.copyWith((message) => updates(message as QueryPoolBatchDepositMsgsResponse)) as QueryPoolBatchDepositMsgsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchDepositMsgsResponse create() => QueryPoolBatchDepositMsgsResponse._();
  QueryPoolBatchDepositMsgsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchDepositMsgsResponse> createRepeated() => $pb.PbList<QueryPoolBatchDepositMsgsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchDepositMsgsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchDepositMsgsResponse>(create);
  static QueryPoolBatchDepositMsgsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.DepositMsgState> get deposits => $_getList(0);

  @$pb.TagNumber(2)
  $7.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($7.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $7.PageResponse ensurePagination() => $_ensure(1);
}

class QueryPoolBatchDepositMsgResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchDepositMsgResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOM<$5.DepositMsgState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deposit', subBuilder: $5.DepositMsgState.create)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchDepositMsgResponse._() : super();
  factory QueryPoolBatchDepositMsgResponse({
    $5.DepositMsgState? deposit,
  }) {
    final _result = create();
    if (deposit != null) {
      _result.deposit = deposit;
    }
    return _result;
  }
  factory QueryPoolBatchDepositMsgResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchDepositMsgResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchDepositMsgResponse clone() => QueryPoolBatchDepositMsgResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchDepositMsgResponse copyWith(void Function(QueryPoolBatchDepositMsgResponse) updates) => super.copyWith((message) => updates(message as QueryPoolBatchDepositMsgResponse)) as QueryPoolBatchDepositMsgResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchDepositMsgResponse create() => QueryPoolBatchDepositMsgResponse._();
  QueryPoolBatchDepositMsgResponse createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchDepositMsgResponse> createRepeated() => $pb.PbList<QueryPoolBatchDepositMsgResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchDepositMsgResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchDepositMsgResponse>(create);
  static QueryPoolBatchDepositMsgResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.DepositMsgState get deposit => $_getN(0);
  @$pb.TagNumber(1)
  set deposit($5.DepositMsgState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeposit() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeposit() => clearField(1);
  @$pb.TagNumber(1)
  $5.DepositMsgState ensureDeposit() => $_ensure(0);
}

class QueryPoolBatchWithdrawMsgsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchWithdrawMsgsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.PageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $7.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchWithdrawMsgsRequest._() : super();
  factory QueryPoolBatchWithdrawMsgsRequest({
    $fixnum.Int64? poolId,
    $7.PageRequest? pagination,
  }) {
    final _result = create();
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryPoolBatchWithdrawMsgsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchWithdrawMsgsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchWithdrawMsgsRequest clone() => QueryPoolBatchWithdrawMsgsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchWithdrawMsgsRequest copyWith(void Function(QueryPoolBatchWithdrawMsgsRequest) updates) => super.copyWith((message) => updates(message as QueryPoolBatchWithdrawMsgsRequest)) as QueryPoolBatchWithdrawMsgsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchWithdrawMsgsRequest create() => QueryPoolBatchWithdrawMsgsRequest._();
  QueryPoolBatchWithdrawMsgsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchWithdrawMsgsRequest> createRepeated() => $pb.PbList<QueryPoolBatchWithdrawMsgsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchWithdrawMsgsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchWithdrawMsgsRequest>(create);
  static QueryPoolBatchWithdrawMsgsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get poolId => $_getI64(0);
  @$pb.TagNumber(1)
  set poolId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolId() => clearField(1);

  @$pb.TagNumber(2)
  $7.PageRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($7.PageRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $7.PageRequest ensurePagination() => $_ensure(1);
}

class QueryPoolBatchWithdrawMsgRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchWithdrawMsgRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'poolId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchWithdrawMsgRequest._() : super();
  factory QueryPoolBatchWithdrawMsgRequest({
    $fixnum.Int64? poolId,
    $fixnum.Int64? msgIndex,
  }) {
    final _result = create();
    if (poolId != null) {
      _result.poolId = poolId;
    }
    if (msgIndex != null) {
      _result.msgIndex = msgIndex;
    }
    return _result;
  }
  factory QueryPoolBatchWithdrawMsgRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchWithdrawMsgRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchWithdrawMsgRequest clone() => QueryPoolBatchWithdrawMsgRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchWithdrawMsgRequest copyWith(void Function(QueryPoolBatchWithdrawMsgRequest) updates) => super.copyWith((message) => updates(message as QueryPoolBatchWithdrawMsgRequest)) as QueryPoolBatchWithdrawMsgRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchWithdrawMsgRequest create() => QueryPoolBatchWithdrawMsgRequest._();
  QueryPoolBatchWithdrawMsgRequest createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchWithdrawMsgRequest> createRepeated() => $pb.PbList<QueryPoolBatchWithdrawMsgRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchWithdrawMsgRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchWithdrawMsgRequest>(create);
  static QueryPoolBatchWithdrawMsgRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get poolId => $_getI64(0);
  @$pb.TagNumber(1)
  set poolId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoolId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set msgIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgIndex() => clearField(2);
}

class QueryPoolBatchWithdrawMsgsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchWithdrawMsgsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..pc<$5.WithdrawMsgState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withdraws', $pb.PbFieldType.PM, subBuilder: $5.WithdrawMsgState.create)
    ..aOM<$7.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $7.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchWithdrawMsgsResponse._() : super();
  factory QueryPoolBatchWithdrawMsgsResponse({
    $core.Iterable<$5.WithdrawMsgState>? withdraws,
    $7.PageResponse? pagination,
  }) {
    final _result = create();
    if (withdraws != null) {
      _result.withdraws.addAll(withdraws);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryPoolBatchWithdrawMsgsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchWithdrawMsgsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchWithdrawMsgsResponse clone() => QueryPoolBatchWithdrawMsgsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchWithdrawMsgsResponse copyWith(void Function(QueryPoolBatchWithdrawMsgsResponse) updates) => super.copyWith((message) => updates(message as QueryPoolBatchWithdrawMsgsResponse)) as QueryPoolBatchWithdrawMsgsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchWithdrawMsgsResponse create() => QueryPoolBatchWithdrawMsgsResponse._();
  QueryPoolBatchWithdrawMsgsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchWithdrawMsgsResponse> createRepeated() => $pb.PbList<QueryPoolBatchWithdrawMsgsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchWithdrawMsgsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchWithdrawMsgsResponse>(create);
  static QueryPoolBatchWithdrawMsgsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.WithdrawMsgState> get withdraws => $_getList(0);

  @$pb.TagNumber(2)
  $7.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($7.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $7.PageResponse ensurePagination() => $_ensure(1);
}

class QueryPoolBatchWithdrawMsgResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPoolBatchWithdrawMsgResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.liquidity.v1beta1'), createEmptyInstance: create)
    ..aOM<$5.WithdrawMsgState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withdraw', subBuilder: $5.WithdrawMsgState.create)
    ..hasRequiredFields = false
  ;

  QueryPoolBatchWithdrawMsgResponse._() : super();
  factory QueryPoolBatchWithdrawMsgResponse({
    $5.WithdrawMsgState? withdraw,
  }) {
    final _result = create();
    if (withdraw != null) {
      _result.withdraw = withdraw;
    }
    return _result;
  }
  factory QueryPoolBatchWithdrawMsgResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPoolBatchWithdrawMsgResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPoolBatchWithdrawMsgResponse clone() => QueryPoolBatchWithdrawMsgResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPoolBatchWithdrawMsgResponse copyWith(void Function(QueryPoolBatchWithdrawMsgResponse) updates) => super.copyWith((message) => updates(message as QueryPoolBatchWithdrawMsgResponse)) as QueryPoolBatchWithdrawMsgResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchWithdrawMsgResponse create() => QueryPoolBatchWithdrawMsgResponse._();
  QueryPoolBatchWithdrawMsgResponse createEmptyInstance() => create();
  static $pb.PbList<QueryPoolBatchWithdrawMsgResponse> createRepeated() => $pb.PbList<QueryPoolBatchWithdrawMsgResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryPoolBatchWithdrawMsgResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPoolBatchWithdrawMsgResponse>(create);
  static QueryPoolBatchWithdrawMsgResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.WithdrawMsgState get withdraw => $_getN(0);
  @$pb.TagNumber(1)
  set withdraw($5.WithdrawMsgState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWithdraw() => $_has(0);
  @$pb.TagNumber(1)
  void clearWithdraw() => clearField(1);
  @$pb.TagNumber(1)
  $5.WithdrawMsgState ensureWithdraw() => $_ensure(0);
}

