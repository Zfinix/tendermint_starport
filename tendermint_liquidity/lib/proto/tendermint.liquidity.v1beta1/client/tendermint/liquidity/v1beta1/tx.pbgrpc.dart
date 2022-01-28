///
//  Generated code. Do not modify.
//  source: tendermint/liquidity/v1beta1/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tx.pb.dart' as $0;
export 'tx.pb.dart';

class MsgClient extends $grpc.Client {
  static final _$createPool =
      $grpc.ClientMethod<$0.MsgCreatePool, $0.MsgCreatePoolResponse>(
          '/tendermint.liquidity.v1beta1.Msg/CreatePool',
          ($0.MsgCreatePool value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MsgCreatePoolResponse.fromBuffer(value));
  static final _$depositWithinBatch = $grpc.ClientMethod<
          $0.MsgDepositWithinBatch, $0.MsgDepositWithinBatchResponse>(
      '/tendermint.liquidity.v1beta1.Msg/DepositWithinBatch',
      ($0.MsgDepositWithinBatch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.MsgDepositWithinBatchResponse.fromBuffer(value));
  static final _$withdrawWithinBatch = $grpc.ClientMethod<
          $0.MsgWithdrawWithinBatch, $0.MsgWithdrawWithinBatchResponse>(
      '/tendermint.liquidity.v1beta1.Msg/WithdrawWithinBatch',
      ($0.MsgWithdrawWithinBatch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.MsgWithdrawWithinBatchResponse.fromBuffer(value));
  static final _$swap =
      $grpc.ClientMethod<$0.MsgSwapWithinBatch, $0.MsgSwapWithinBatchResponse>(
          '/tendermint.liquidity.v1beta1.Msg/Swap',
          ($0.MsgSwapWithinBatch value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MsgSwapWithinBatchResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgCreatePoolResponse> createPool(
      $0.MsgCreatePool request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPool, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgDepositWithinBatchResponse> depositWithinBatch(
      $0.MsgDepositWithinBatch request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$depositWithinBatch, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgWithdrawWithinBatchResponse> withdrawWithinBatch(
      $0.MsgWithdrawWithinBatch request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$withdrawWithinBatch, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgSwapWithinBatchResponse> swap(
      $0.MsgSwapWithinBatch request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$swap, request, options: options);
  }
}

abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'tendermint.liquidity.v1beta1.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgCreatePool, $0.MsgCreatePoolResponse>(
        'CreatePool',
        createPool_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgCreatePool.fromBuffer(value),
        ($0.MsgCreatePoolResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgDepositWithinBatch,
            $0.MsgDepositWithinBatchResponse>(
        'DepositWithinBatch',
        depositWithinBatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MsgDepositWithinBatch.fromBuffer(value),
        ($0.MsgDepositWithinBatchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgWithdrawWithinBatch,
            $0.MsgWithdrawWithinBatchResponse>(
        'WithdrawWithinBatch',
        withdrawWithinBatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MsgWithdrawWithinBatch.fromBuffer(value),
        ($0.MsgWithdrawWithinBatchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgSwapWithinBatch,
            $0.MsgSwapWithinBatchResponse>(
        'Swap',
        swap_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MsgSwapWithinBatch.fromBuffer(value),
        ($0.MsgSwapWithinBatchResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgCreatePoolResponse> createPool_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MsgCreatePool> request) async {
    return createPool(call, await request);
  }

  $async.Future<$0.MsgDepositWithinBatchResponse> depositWithinBatch_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MsgDepositWithinBatch> request) async {
    return depositWithinBatch(call, await request);
  }

  $async.Future<$0.MsgWithdrawWithinBatchResponse> withdrawWithinBatch_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MsgWithdrawWithinBatch> request) async {
    return withdrawWithinBatch(call, await request);
  }

  $async.Future<$0.MsgSwapWithinBatchResponse> swap_Pre($grpc.ServiceCall call,
      $async.Future<$0.MsgSwapWithinBatch> request) async {
    return swap(call, await request);
  }

  $async.Future<$0.MsgCreatePoolResponse> createPool(
      $grpc.ServiceCall call, $0.MsgCreatePool request);
  $async.Future<$0.MsgDepositWithinBatchResponse> depositWithinBatch(
      $grpc.ServiceCall call, $0.MsgDepositWithinBatch request);
  $async.Future<$0.MsgWithdrawWithinBatchResponse> withdrawWithinBatch(
      $grpc.ServiceCall call, $0.MsgWithdrawWithinBatch request);
  $async.Future<$0.MsgSwapWithinBatchResponse> swap(
      $grpc.ServiceCall call, $0.MsgSwapWithinBatch request);
}
