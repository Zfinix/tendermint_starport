///
//  Generated code. Do not modify.
//  source: tendermint/liquidity/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use queryLiquidityPoolRequestDescriptor instead')
const QueryLiquidityPoolRequest$json = const {
  '1': 'QueryLiquidityPoolRequest',
  '2': const [
    const {'1': 'pool_id', '3': 1, '4': 1, '5': 4, '10': 'poolId'},
  ],
};

/// Descriptor for `QueryLiquidityPoolRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryLiquidityPoolRequestDescriptor = $convert.base64Decode('ChlRdWVyeUxpcXVpZGl0eVBvb2xSZXF1ZXN0EhcKB3Bvb2xfaWQYASABKARSBnBvb2xJZA==');
@$core.Deprecated('Use queryLiquidityPoolResponseDescriptor instead')
const QueryLiquidityPoolResponse$json = const {
  '1': 'QueryLiquidityPoolResponse',
  '2': const [
    const {'1': 'pool', '3': 1, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.Pool', '8': const {}, '10': 'pool'},
  ],
};

/// Descriptor for `QueryLiquidityPoolResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryLiquidityPoolResponseDescriptor = $convert.base64Decode('ChpRdWVyeUxpcXVpZGl0eVBvb2xSZXNwb25zZRI8CgRwb29sGAEgASgLMiIudGVuZGVybWludC5saXF1aWRpdHkudjFiZXRhMS5Qb29sQgTI3h8AUgRwb29s');
@$core.Deprecated('Use queryLiquidityPoolByPoolCoinDenomRequestDescriptor instead')
const QueryLiquidityPoolByPoolCoinDenomRequest$json = const {
  '1': 'QueryLiquidityPoolByPoolCoinDenomRequest',
  '2': const [
    const {'1': 'pool_coin_denom', '3': 1, '4': 1, '5': 9, '10': 'poolCoinDenom'},
  ],
};

/// Descriptor for `QueryLiquidityPoolByPoolCoinDenomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryLiquidityPoolByPoolCoinDenomRequestDescriptor = $convert.base64Decode('CihRdWVyeUxpcXVpZGl0eVBvb2xCeVBvb2xDb2luRGVub21SZXF1ZXN0EiYKD3Bvb2xfY29pbl9kZW5vbRgBIAEoCVINcG9vbENvaW5EZW5vbQ==');
@$core.Deprecated('Use queryLiquidityPoolByReserveAccRequestDescriptor instead')
const QueryLiquidityPoolByReserveAccRequest$json = const {
  '1': 'QueryLiquidityPoolByReserveAccRequest',
  '2': const [
    const {'1': 'reserve_acc', '3': 1, '4': 1, '5': 9, '10': 'reserveAcc'},
  ],
};

/// Descriptor for `QueryLiquidityPoolByReserveAccRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryLiquidityPoolByReserveAccRequestDescriptor = $convert.base64Decode('CiVRdWVyeUxpcXVpZGl0eVBvb2xCeVJlc2VydmVBY2NSZXF1ZXN0Eh8KC3Jlc2VydmVfYWNjGAEgASgJUgpyZXNlcnZlQWNj');
@$core.Deprecated('Use queryLiquidityPoolBatchRequestDescriptor instead')
const QueryLiquidityPoolBatchRequest$json = const {
  '1': 'QueryLiquidityPoolBatchRequest',
  '2': const [
    const {'1': 'pool_id', '3': 1, '4': 1, '5': 4, '10': 'poolId'},
  ],
};

/// Descriptor for `QueryLiquidityPoolBatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryLiquidityPoolBatchRequestDescriptor = $convert.base64Decode('Ch5RdWVyeUxpcXVpZGl0eVBvb2xCYXRjaFJlcXVlc3QSFwoHcG9vbF9pZBgBIAEoBFIGcG9vbElk');
@$core.Deprecated('Use queryLiquidityPoolBatchResponseDescriptor instead')
const QueryLiquidityPoolBatchResponse$json = const {
  '1': 'QueryLiquidityPoolBatchResponse',
  '2': const [
    const {'1': 'batch', '3': 1, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.PoolBatch', '8': const {}, '10': 'batch'},
  ],
};

/// Descriptor for `QueryLiquidityPoolBatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryLiquidityPoolBatchResponseDescriptor = $convert.base64Decode('Ch9RdWVyeUxpcXVpZGl0eVBvb2xCYXRjaFJlc3BvbnNlEkMKBWJhdGNoGAEgASgLMicudGVuZGVybWludC5saXF1aWRpdHkudjFiZXRhMS5Qb29sQmF0Y2hCBMjeHwBSBWJhdGNo');
@$core.Deprecated('Use queryLiquidityPoolsRequestDescriptor instead')
const QueryLiquidityPoolsRequest$json = const {
  '1': 'QueryLiquidityPoolsRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryLiquidityPoolsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryLiquidityPoolsRequestDescriptor = $convert.base64Decode('ChpRdWVyeUxpcXVpZGl0eVBvb2xzUmVxdWVzdBJGCgpwYWdpbmF0aW9uGAEgASgLMiYuY29zbW9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVxdWVzdFIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryLiquidityPoolsResponseDescriptor instead')
const QueryLiquidityPoolsResponse$json = const {
  '1': 'QueryLiquidityPoolsResponse',
  '2': const [
    const {'1': 'pools', '3': 1, '4': 3, '5': 11, '6': '.tendermint.liquidity.v1beta1.Pool', '8': const {}, '10': 'pools'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryLiquidityPoolsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryLiquidityPoolsResponseDescriptor = $convert.base64Decode('ChtRdWVyeUxpcXVpZGl0eVBvb2xzUmVzcG9uc2USPgoFcG9vbHMYASADKAsyIi50ZW5kZXJtaW50LmxpcXVpZGl0eS52MWJldGExLlBvb2xCBMjeHwBSBXBvb2xzEkcKCnBhZ2luYXRpb24YAiABKAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = const {
  '1': 'QueryParamsRequest',
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode('ChJRdWVyeVBhcmFtc1JlcXVlc3Q=');
@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = const {
  '1': 'QueryParamsResponse',
  '2': const [
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.Params', '8': const {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode('ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEkIKBnBhcmFtcxgBIAEoCzIkLnRlbmRlcm1pbnQubGlxdWlkaXR5LnYxYmV0YTEuUGFyYW1zQgTI3h8AUgZwYXJhbXM=');
@$core.Deprecated('Use queryPoolBatchSwapMsgsRequestDescriptor instead')
const QueryPoolBatchSwapMsgsRequest$json = const {
  '1': 'QueryPoolBatchSwapMsgsRequest',
  '2': const [
    const {'1': 'pool_id', '3': 1, '4': 1, '5': 4, '10': 'poolId'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryPoolBatchSwapMsgsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchSwapMsgsRequestDescriptor = $convert.base64Decode('Ch1RdWVyeVBvb2xCYXRjaFN3YXBNc2dzUmVxdWVzdBIXCgdwb29sX2lkGAEgASgEUgZwb29sSWQSRgoKcGFnaW5hdGlvbhgCIAEoCzImLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlcXVlc3RSCnBhZ2luYXRpb24=');
@$core.Deprecated('Use queryPoolBatchSwapMsgRequestDescriptor instead')
const QueryPoolBatchSwapMsgRequest$json = const {
  '1': 'QueryPoolBatchSwapMsgRequest',
  '2': const [
    const {'1': 'pool_id', '3': 1, '4': 1, '5': 4, '10': 'poolId'},
    const {'1': 'msg_index', '3': 2, '4': 1, '5': 4, '10': 'msgIndex'},
  ],
};

/// Descriptor for `QueryPoolBatchSwapMsgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchSwapMsgRequestDescriptor = $convert.base64Decode('ChxRdWVyeVBvb2xCYXRjaFN3YXBNc2dSZXF1ZXN0EhcKB3Bvb2xfaWQYASABKARSBnBvb2xJZBIbCgltc2dfaW5kZXgYAiABKARSCG1zZ0luZGV4');
@$core.Deprecated('Use queryPoolBatchSwapMsgsResponseDescriptor instead')
const QueryPoolBatchSwapMsgsResponse$json = const {
  '1': 'QueryPoolBatchSwapMsgsResponse',
  '2': const [
    const {'1': 'swaps', '3': 1, '4': 3, '5': 11, '6': '.tendermint.liquidity.v1beta1.SwapMsgState', '8': const {}, '10': 'swaps'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryPoolBatchSwapMsgsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchSwapMsgsResponseDescriptor = $convert.base64Decode('Ch5RdWVyeVBvb2xCYXRjaFN3YXBNc2dzUmVzcG9uc2USRgoFc3dhcHMYASADKAsyKi50ZW5kZXJtaW50LmxpcXVpZGl0eS52MWJldGExLlN3YXBNc2dTdGF0ZUIEyN4fAFIFc3dhcHMSRwoKcGFnaW5hdGlvbhgCIAEoCzInLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryPoolBatchSwapMsgResponseDescriptor instead')
const QueryPoolBatchSwapMsgResponse$json = const {
  '1': 'QueryPoolBatchSwapMsgResponse',
  '2': const [
    const {'1': 'swap', '3': 1, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.SwapMsgState', '8': const {}, '10': 'swap'},
  ],
};

/// Descriptor for `QueryPoolBatchSwapMsgResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchSwapMsgResponseDescriptor = $convert.base64Decode('Ch1RdWVyeVBvb2xCYXRjaFN3YXBNc2dSZXNwb25zZRJECgRzd2FwGAEgASgLMioudGVuZGVybWludC5saXF1aWRpdHkudjFiZXRhMS5Td2FwTXNnU3RhdGVCBMjeHwBSBHN3YXA=');
@$core.Deprecated('Use queryPoolBatchDepositMsgsRequestDescriptor instead')
const QueryPoolBatchDepositMsgsRequest$json = const {
  '1': 'QueryPoolBatchDepositMsgsRequest',
  '2': const [
    const {'1': 'pool_id', '3': 1, '4': 1, '5': 4, '10': 'poolId'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryPoolBatchDepositMsgsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchDepositMsgsRequestDescriptor = $convert.base64Decode('CiBRdWVyeVBvb2xCYXRjaERlcG9zaXRNc2dzUmVxdWVzdBIXCgdwb29sX2lkGAEgASgEUgZwb29sSWQSRgoKcGFnaW5hdGlvbhgCIAEoCzImLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlcXVlc3RSCnBhZ2luYXRpb24=');
@$core.Deprecated('Use queryPoolBatchDepositMsgRequestDescriptor instead')
const QueryPoolBatchDepositMsgRequest$json = const {
  '1': 'QueryPoolBatchDepositMsgRequest',
  '2': const [
    const {'1': 'pool_id', '3': 1, '4': 1, '5': 4, '10': 'poolId'},
    const {'1': 'msg_index', '3': 2, '4': 1, '5': 4, '10': 'msgIndex'},
  ],
};

/// Descriptor for `QueryPoolBatchDepositMsgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchDepositMsgRequestDescriptor = $convert.base64Decode('Ch9RdWVyeVBvb2xCYXRjaERlcG9zaXRNc2dSZXF1ZXN0EhcKB3Bvb2xfaWQYASABKARSBnBvb2xJZBIbCgltc2dfaW5kZXgYAiABKARSCG1zZ0luZGV4');
@$core.Deprecated('Use queryPoolBatchDepositMsgsResponseDescriptor instead')
const QueryPoolBatchDepositMsgsResponse$json = const {
  '1': 'QueryPoolBatchDepositMsgsResponse',
  '2': const [
    const {'1': 'deposits', '3': 1, '4': 3, '5': 11, '6': '.tendermint.liquidity.v1beta1.DepositMsgState', '8': const {}, '10': 'deposits'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryPoolBatchDepositMsgsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchDepositMsgsResponseDescriptor = $convert.base64Decode('CiFRdWVyeVBvb2xCYXRjaERlcG9zaXRNc2dzUmVzcG9uc2USTwoIZGVwb3NpdHMYASADKAsyLS50ZW5kZXJtaW50LmxpcXVpZGl0eS52MWJldGExLkRlcG9zaXRNc2dTdGF0ZUIEyN4fAFIIZGVwb3NpdHMSRwoKcGFnaW5hdGlvbhgCIAEoCzInLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryPoolBatchDepositMsgResponseDescriptor instead')
const QueryPoolBatchDepositMsgResponse$json = const {
  '1': 'QueryPoolBatchDepositMsgResponse',
  '2': const [
    const {'1': 'deposit', '3': 1, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.DepositMsgState', '8': const {}, '10': 'deposit'},
  ],
};

/// Descriptor for `QueryPoolBatchDepositMsgResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchDepositMsgResponseDescriptor = $convert.base64Decode('CiBRdWVyeVBvb2xCYXRjaERlcG9zaXRNc2dSZXNwb25zZRJNCgdkZXBvc2l0GAEgASgLMi0udGVuZGVybWludC5saXF1aWRpdHkudjFiZXRhMS5EZXBvc2l0TXNnU3RhdGVCBMjeHwBSB2RlcG9zaXQ=');
@$core.Deprecated('Use queryPoolBatchWithdrawMsgsRequestDescriptor instead')
const QueryPoolBatchWithdrawMsgsRequest$json = const {
  '1': 'QueryPoolBatchWithdrawMsgsRequest',
  '2': const [
    const {'1': 'pool_id', '3': 1, '4': 1, '5': 4, '10': 'poolId'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryPoolBatchWithdrawMsgsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchWithdrawMsgsRequestDescriptor = $convert.base64Decode('CiFRdWVyeVBvb2xCYXRjaFdpdGhkcmF3TXNnc1JlcXVlc3QSFwoHcG9vbF9pZBgBIAEoBFIGcG9vbElkEkYKCnBhZ2luYXRpb24YAiABKAsyJi5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryPoolBatchWithdrawMsgRequestDescriptor instead')
const QueryPoolBatchWithdrawMsgRequest$json = const {
  '1': 'QueryPoolBatchWithdrawMsgRequest',
  '2': const [
    const {'1': 'pool_id', '3': 1, '4': 1, '5': 4, '10': 'poolId'},
    const {'1': 'msg_index', '3': 2, '4': 1, '5': 4, '10': 'msgIndex'},
  ],
};

/// Descriptor for `QueryPoolBatchWithdrawMsgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchWithdrawMsgRequestDescriptor = $convert.base64Decode('CiBRdWVyeVBvb2xCYXRjaFdpdGhkcmF3TXNnUmVxdWVzdBIXCgdwb29sX2lkGAEgASgEUgZwb29sSWQSGwoJbXNnX2luZGV4GAIgASgEUghtc2dJbmRleA==');
@$core.Deprecated('Use queryPoolBatchWithdrawMsgsResponseDescriptor instead')
const QueryPoolBatchWithdrawMsgsResponse$json = const {
  '1': 'QueryPoolBatchWithdrawMsgsResponse',
  '2': const [
    const {'1': 'withdraws', '3': 1, '4': 3, '5': 11, '6': '.tendermint.liquidity.v1beta1.WithdrawMsgState', '8': const {}, '10': 'withdraws'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryPoolBatchWithdrawMsgsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchWithdrawMsgsResponseDescriptor = $convert.base64Decode('CiJRdWVyeVBvb2xCYXRjaFdpdGhkcmF3TXNnc1Jlc3BvbnNlElIKCXdpdGhkcmF3cxgBIAMoCzIuLnRlbmRlcm1pbnQubGlxdWlkaXR5LnYxYmV0YTEuV2l0aGRyYXdNc2dTdGF0ZUIEyN4fAFIJd2l0aGRyYXdzEkcKCnBhZ2luYXRpb24YAiABKAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryPoolBatchWithdrawMsgResponseDescriptor instead')
const QueryPoolBatchWithdrawMsgResponse$json = const {
  '1': 'QueryPoolBatchWithdrawMsgResponse',
  '2': const [
    const {'1': 'withdraw', '3': 1, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.WithdrawMsgState', '8': const {}, '10': 'withdraw'},
  ],
};

/// Descriptor for `QueryPoolBatchWithdrawMsgResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPoolBatchWithdrawMsgResponseDescriptor = $convert.base64Decode('CiFRdWVyeVBvb2xCYXRjaFdpdGhkcmF3TXNnUmVzcG9uc2USUAoId2l0aGRyYXcYASABKAsyLi50ZW5kZXJtaW50LmxpcXVpZGl0eS52MWJldGExLldpdGhkcmF3TXNnU3RhdGVCBMjeHwBSCHdpdGhkcmF3');
