///
//  Generated code. Do not modify.
//  source: tendermint/liquidity/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $1;
export 'query.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$liquidityPools = $grpc.ClientMethod<
          $1.QueryLiquidityPoolsRequest, $1.QueryLiquidityPoolsResponse>(
      '/tendermint.liquidity.v1beta1.Query/LiquidityPools',
      ($1.QueryLiquidityPoolsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryLiquidityPoolsResponse.fromBuffer(value));
  static final _$liquidityPool = $grpc.ClientMethod<
          $1.QueryLiquidityPoolRequest, $1.QueryLiquidityPoolResponse>(
      '/tendermint.liquidity.v1beta1.Query/LiquidityPool',
      ($1.QueryLiquidityPoolRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryLiquidityPoolResponse.fromBuffer(value));
  static final _$liquidityPoolByPoolCoinDenom = $grpc.ClientMethod<
          $1.QueryLiquidityPoolByPoolCoinDenomRequest,
          $1.QueryLiquidityPoolResponse>(
      '/tendermint.liquidity.v1beta1.Query/LiquidityPoolByPoolCoinDenom',
      ($1.QueryLiquidityPoolByPoolCoinDenomRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryLiquidityPoolResponse.fromBuffer(value));
  static final _$liquidityPoolByReserveAcc = $grpc.ClientMethod<
          $1.QueryLiquidityPoolByReserveAccRequest,
          $1.QueryLiquidityPoolResponse>(
      '/tendermint.liquidity.v1beta1.Query/LiquidityPoolByReserveAcc',
      ($1.QueryLiquidityPoolByReserveAccRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryLiquidityPoolResponse.fromBuffer(value));
  static final _$liquidityPoolBatch = $grpc.ClientMethod<
          $1.QueryLiquidityPoolBatchRequest,
          $1.QueryLiquidityPoolBatchResponse>(
      '/tendermint.liquidity.v1beta1.Query/LiquidityPoolBatch',
      ($1.QueryLiquidityPoolBatchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryLiquidityPoolBatchResponse.fromBuffer(value));
  static final _$poolBatchSwapMsgs = $grpc.ClientMethod<
          $1.QueryPoolBatchSwapMsgsRequest, $1.QueryPoolBatchSwapMsgsResponse>(
      '/tendermint.liquidity.v1beta1.Query/PoolBatchSwapMsgs',
      ($1.QueryPoolBatchSwapMsgsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryPoolBatchSwapMsgsResponse.fromBuffer(value));
  static final _$poolBatchSwapMsg = $grpc.ClientMethod<
          $1.QueryPoolBatchSwapMsgRequest, $1.QueryPoolBatchSwapMsgResponse>(
      '/tendermint.liquidity.v1beta1.Query/PoolBatchSwapMsg',
      ($1.QueryPoolBatchSwapMsgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryPoolBatchSwapMsgResponse.fromBuffer(value));
  static final _$poolBatchDepositMsgs = $grpc.ClientMethod<
          $1.QueryPoolBatchDepositMsgsRequest,
          $1.QueryPoolBatchDepositMsgsResponse>(
      '/tendermint.liquidity.v1beta1.Query/PoolBatchDepositMsgs',
      ($1.QueryPoolBatchDepositMsgsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryPoolBatchDepositMsgsResponse.fromBuffer(value));
  static final _$poolBatchDepositMsg = $grpc.ClientMethod<
          $1.QueryPoolBatchDepositMsgRequest,
          $1.QueryPoolBatchDepositMsgResponse>(
      '/tendermint.liquidity.v1beta1.Query/PoolBatchDepositMsg',
      ($1.QueryPoolBatchDepositMsgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryPoolBatchDepositMsgResponse.fromBuffer(value));
  static final _$poolBatchWithdrawMsgs = $grpc.ClientMethod<
          $1.QueryPoolBatchWithdrawMsgsRequest,
          $1.QueryPoolBatchWithdrawMsgsResponse>(
      '/tendermint.liquidity.v1beta1.Query/PoolBatchWithdrawMsgs',
      ($1.QueryPoolBatchWithdrawMsgsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryPoolBatchWithdrawMsgsResponse.fromBuffer(value));
  static final _$poolBatchWithdrawMsg = $grpc.ClientMethod<
          $1.QueryPoolBatchWithdrawMsgRequest,
          $1.QueryPoolBatchWithdrawMsgResponse>(
      '/tendermint.liquidity.v1beta1.Query/PoolBatchWithdrawMsg',
      ($1.QueryPoolBatchWithdrawMsgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.QueryPoolBatchWithdrawMsgResponse.fromBuffer(value));
  static final _$params =
      $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
          '/tendermint.liquidity.v1beta1.Query/Params',
          ($1.QueryParamsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.QueryParamsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryLiquidityPoolsResponse> liquidityPools(
      $1.QueryLiquidityPoolsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$liquidityPools, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryLiquidityPoolResponse> liquidityPool(
      $1.QueryLiquidityPoolRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$liquidityPool, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryLiquidityPoolResponse>
      liquidityPoolByPoolCoinDenom(
          $1.QueryLiquidityPoolByPoolCoinDenomRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$liquidityPoolByPoolCoinDenom, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.QueryLiquidityPoolResponse> liquidityPoolByReserveAcc(
      $1.QueryLiquidityPoolByReserveAccRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$liquidityPoolByReserveAcc, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.QueryLiquidityPoolBatchResponse> liquidityPoolBatch(
      $1.QueryLiquidityPoolBatchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$liquidityPoolBatch, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryPoolBatchSwapMsgsResponse> poolBatchSwapMsgs(
      $1.QueryPoolBatchSwapMsgsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$poolBatchSwapMsgs, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryPoolBatchSwapMsgResponse> poolBatchSwapMsg(
      $1.QueryPoolBatchSwapMsgRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$poolBatchSwapMsg, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryPoolBatchDepositMsgsResponse>
      poolBatchDepositMsgs($1.QueryPoolBatchDepositMsgsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$poolBatchDepositMsgs, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryPoolBatchDepositMsgResponse> poolBatchDepositMsg(
      $1.QueryPoolBatchDepositMsgRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$poolBatchDepositMsg, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryPoolBatchWithdrawMsgsResponse>
      poolBatchWithdrawMsgs($1.QueryPoolBatchWithdrawMsgsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$poolBatchWithdrawMsgs, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryPoolBatchWithdrawMsgResponse>
      poolBatchWithdrawMsg($1.QueryPoolBatchWithdrawMsgRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$poolBatchWithdrawMsg, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryParamsResponse> params(
      $1.QueryParamsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'tendermint.liquidity.v1beta1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryLiquidityPoolsRequest,
            $1.QueryLiquidityPoolsResponse>(
        'LiquidityPools',
        liquidityPools_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryLiquidityPoolsRequest.fromBuffer(value),
        ($1.QueryLiquidityPoolsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryLiquidityPoolRequest,
            $1.QueryLiquidityPoolResponse>(
        'LiquidityPool',
        liquidityPool_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryLiquidityPoolRequest.fromBuffer(value),
        ($1.QueryLiquidityPoolResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryLiquidityPoolByPoolCoinDenomRequest,
            $1.QueryLiquidityPoolResponse>(
        'LiquidityPoolByPoolCoinDenom',
        liquidityPoolByPoolCoinDenom_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryLiquidityPoolByPoolCoinDenomRequest.fromBuffer(value),
        ($1.QueryLiquidityPoolResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryLiquidityPoolByReserveAccRequest,
            $1.QueryLiquidityPoolResponse>(
        'LiquidityPoolByReserveAcc',
        liquidityPoolByReserveAcc_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryLiquidityPoolByReserveAccRequest.fromBuffer(value),
        ($1.QueryLiquidityPoolResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryLiquidityPoolBatchRequest,
            $1.QueryLiquidityPoolBatchResponse>(
        'LiquidityPoolBatch',
        liquidityPoolBatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryLiquidityPoolBatchRequest.fromBuffer(value),
        ($1.QueryLiquidityPoolBatchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryPoolBatchSwapMsgsRequest,
            $1.QueryPoolBatchSwapMsgsResponse>(
        'PoolBatchSwapMsgs',
        poolBatchSwapMsgs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryPoolBatchSwapMsgsRequest.fromBuffer(value),
        ($1.QueryPoolBatchSwapMsgsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryPoolBatchSwapMsgRequest,
            $1.QueryPoolBatchSwapMsgResponse>(
        'PoolBatchSwapMsg',
        poolBatchSwapMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryPoolBatchSwapMsgRequest.fromBuffer(value),
        ($1.QueryPoolBatchSwapMsgResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryPoolBatchDepositMsgsRequest,
            $1.QueryPoolBatchDepositMsgsResponse>(
        'PoolBatchDepositMsgs',
        poolBatchDepositMsgs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryPoolBatchDepositMsgsRequest.fromBuffer(value),
        ($1.QueryPoolBatchDepositMsgsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryPoolBatchDepositMsgRequest,
            $1.QueryPoolBatchDepositMsgResponse>(
        'PoolBatchDepositMsg',
        poolBatchDepositMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryPoolBatchDepositMsgRequest.fromBuffer(value),
        ($1.QueryPoolBatchDepositMsgResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryPoolBatchWithdrawMsgsRequest,
            $1.QueryPoolBatchWithdrawMsgsResponse>(
        'PoolBatchWithdrawMsgs',
        poolBatchWithdrawMsgs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryPoolBatchWithdrawMsgsRequest.fromBuffer(value),
        ($1.QueryPoolBatchWithdrawMsgsResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryPoolBatchWithdrawMsgRequest,
            $1.QueryPoolBatchWithdrawMsgResponse>(
        'PoolBatchWithdrawMsg',
        poolBatchWithdrawMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.QueryPoolBatchWithdrawMsgRequest.fromBuffer(value),
        ($1.QueryPoolBatchWithdrawMsgResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
            'Params',
            params_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.QueryParamsRequest.fromBuffer(value),
            ($1.QueryParamsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryLiquidityPoolsResponse> liquidityPools_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.QueryLiquidityPoolsRequest> request) async {
    return liquidityPools(call, await request);
  }

  $async.Future<$1.QueryLiquidityPoolResponse> liquidityPool_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.QueryLiquidityPoolRequest> request) async {
    return liquidityPool(call, await request);
  }

  $async.Future<$1.QueryLiquidityPoolResponse> liquidityPoolByPoolCoinDenom_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.QueryLiquidityPoolByPoolCoinDenomRequest>
          request) async {
    return liquidityPoolByPoolCoinDenom(call, await request);
  }

  $async.Future<$1.QueryLiquidityPoolResponse> liquidityPoolByReserveAcc_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.QueryLiquidityPoolByReserveAccRequest> request) async {
    return liquidityPoolByReserveAcc(call, await request);
  }

  $async.Future<$1.QueryLiquidityPoolBatchResponse> liquidityPoolBatch_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.QueryLiquidityPoolBatchRequest> request) async {
    return liquidityPoolBatch(call, await request);
  }

  $async.Future<$1.QueryPoolBatchSwapMsgsResponse> poolBatchSwapMsgs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.QueryPoolBatchSwapMsgsRequest> request) async {
    return poolBatchSwapMsgs(call, await request);
  }

  $async.Future<$1.QueryPoolBatchSwapMsgResponse> poolBatchSwapMsg_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.QueryPoolBatchSwapMsgRequest> request) async {
    return poolBatchSwapMsg(call, await request);
  }

  $async.Future<$1.QueryPoolBatchDepositMsgsResponse> poolBatchDepositMsgs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.QueryPoolBatchDepositMsgsRequest> request) async {
    return poolBatchDepositMsgs(call, await request);
  }

  $async.Future<$1.QueryPoolBatchDepositMsgResponse> poolBatchDepositMsg_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.QueryPoolBatchDepositMsgRequest> request) async {
    return poolBatchDepositMsg(call, await request);
  }

  $async.Future<$1.QueryPoolBatchWithdrawMsgsResponse>
      poolBatchWithdrawMsgs_Pre($grpc.ServiceCall call,
          $async.Future<$1.QueryPoolBatchWithdrawMsgsRequest> request) async {
    return poolBatchWithdrawMsgs(call, await request);
  }

  $async.Future<$1.QueryPoolBatchWithdrawMsgResponse> poolBatchWithdrawMsg_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.QueryPoolBatchWithdrawMsgRequest> request) async {
    return poolBatchWithdrawMsg(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call,
      $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryLiquidityPoolsResponse> liquidityPools(
      $grpc.ServiceCall call, $1.QueryLiquidityPoolsRequest request);
  $async.Future<$1.QueryLiquidityPoolResponse> liquidityPool(
      $grpc.ServiceCall call, $1.QueryLiquidityPoolRequest request);
  $async.Future<$1.QueryLiquidityPoolResponse> liquidityPoolByPoolCoinDenom(
      $grpc.ServiceCall call,
      $1.QueryLiquidityPoolByPoolCoinDenomRequest request);
  $async.Future<$1.QueryLiquidityPoolResponse> liquidityPoolByReserveAcc(
      $grpc.ServiceCall call, $1.QueryLiquidityPoolByReserveAccRequest request);
  $async.Future<$1.QueryLiquidityPoolBatchResponse> liquidityPoolBatch(
      $grpc.ServiceCall call, $1.QueryLiquidityPoolBatchRequest request);
  $async.Future<$1.QueryPoolBatchSwapMsgsResponse> poolBatchSwapMsgs(
      $grpc.ServiceCall call, $1.QueryPoolBatchSwapMsgsRequest request);
  $async.Future<$1.QueryPoolBatchSwapMsgResponse> poolBatchSwapMsg(
      $grpc.ServiceCall call, $1.QueryPoolBatchSwapMsgRequest request);
  $async.Future<$1.QueryPoolBatchDepositMsgsResponse> poolBatchDepositMsgs(
      $grpc.ServiceCall call, $1.QueryPoolBatchDepositMsgsRequest request);
  $async.Future<$1.QueryPoolBatchDepositMsgResponse> poolBatchDepositMsg(
      $grpc.ServiceCall call, $1.QueryPoolBatchDepositMsgRequest request);
  $async.Future<$1.QueryPoolBatchWithdrawMsgsResponse> poolBatchWithdrawMsgs(
      $grpc.ServiceCall call, $1.QueryPoolBatchWithdrawMsgsRequest request);
  $async.Future<$1.QueryPoolBatchWithdrawMsgResponse> poolBatchWithdrawMsg(
      $grpc.ServiceCall call, $1.QueryPoolBatchWithdrawMsgRequest request);
  $async.Future<$1.QueryParamsResponse> params(
      $grpc.ServiceCall call, $1.QueryParamsRequest request);
}
