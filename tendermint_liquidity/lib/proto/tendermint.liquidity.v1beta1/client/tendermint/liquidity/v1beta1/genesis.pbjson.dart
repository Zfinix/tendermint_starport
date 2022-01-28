///
//  Generated code. Do not modify.
//  source: tendermint/liquidity/v1beta1/genesis.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use poolRecordDescriptor instead')
const PoolRecord$json = const {
  '1': 'PoolRecord',
  '2': const [
    const {'1': 'pool', '3': 1, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.Pool', '8': const {}, '10': 'pool'},
    const {'1': 'pool_metadata', '3': 2, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.PoolMetadata', '8': const {}, '10': 'poolMetadata'},
    const {'1': 'pool_batch', '3': 3, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.PoolBatch', '8': const {}, '10': 'poolBatch'},
    const {'1': 'deposit_msg_states', '3': 4, '4': 3, '5': 11, '6': '.tendermint.liquidity.v1beta1.DepositMsgState', '8': const {}, '10': 'depositMsgStates'},
    const {'1': 'withdraw_msg_states', '3': 5, '4': 3, '5': 11, '6': '.tendermint.liquidity.v1beta1.WithdrawMsgState', '8': const {}, '10': 'withdrawMsgStates'},
    const {'1': 'swap_msg_states', '3': 6, '4': 3, '5': 11, '6': '.tendermint.liquidity.v1beta1.SwapMsgState', '8': const {}, '10': 'swapMsgStates'},
  ],
};

/// Descriptor for `PoolRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List poolRecordDescriptor = $convert.base64Decode('CgpQb29sUmVjb3JkEksKBHBvb2wYASABKAsyIi50ZW5kZXJtaW50LmxpcXVpZGl0eS52MWJldGExLlBvb2xCE8jeHwDy3h8LeWFtbDoicG9vbCJSBHBvb2wSbQoNcG9vbF9tZXRhZGF0YRgCIAEoCzIqLnRlbmRlcm1pbnQubGlxdWlkaXR5LnYxYmV0YTEuUG9vbE1ldGFkYXRhQhzI3h8A8t4fFHlhbWw6InBvb2xfbWV0YWRhdGEiUgxwb29sTWV0YWRhdGESYQoKcG9vbF9iYXRjaBgDIAEoCzInLnRlbmRlcm1pbnQubGlxdWlkaXR5LnYxYmV0YTEuUG9vbEJhdGNoQhnI3h8A8t4fEXlhbWw6InBvb2xfYmF0Y2giUglwb29sQmF0Y2gSfgoSZGVwb3NpdF9tc2dfc3RhdGVzGAQgAygLMi0udGVuZGVybWludC5saXF1aWRpdHkudjFiZXRhMS5EZXBvc2l0TXNnU3RhdGVCIcjeHwDy3h8ZeWFtbDoiZGVwb3NpdF9tc2dfc3RhdGVzIlIQZGVwb3NpdE1zZ1N0YXRlcxKCAQoTd2l0aGRyYXdfbXNnX3N0YXRlcxgFIAMoCzIuLnRlbmRlcm1pbnQubGlxdWlkaXR5LnYxYmV0YTEuV2l0aGRyYXdNc2dTdGF0ZUIiyN4fAPLeHxp5YW1sOiJ3aXRoZHJhd19tc2dfc3RhdGVzIlIRd2l0aGRyYXdNc2dTdGF0ZXMScgoPc3dhcF9tc2dfc3RhdGVzGAYgAygLMioudGVuZGVybWludC5saXF1aWRpdHkudjFiZXRhMS5Td2FwTXNnU3RhdGVCHsjeHwDy3h8WeWFtbDoic3dhcF9tc2dfc3RhdGVzIlINc3dhcE1zZ1N0YXRlcw==');
@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = const {
  '1': 'GenesisState',
  '2': const [
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.Params', '8': const {}, '10': 'params'},
    const {'1': 'pool_records', '3': 2, '4': 3, '5': 11, '6': '.tendermint.liquidity.v1beta1.PoolRecord', '8': const {}, '10': 'poolRecords'},
  ],
  '7': const {},
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode('CgxHZW5lc2lzU3RhdGUSQgoGcGFyYW1zGAEgASgLMiQudGVuZGVybWludC5saXF1aWRpdHkudjFiZXRhMS5QYXJhbXNCBMjeHwBSBnBhcmFtcxJhCgxwb29sX3JlY29yZHMYAiADKAsyKC50ZW5kZXJtaW50LmxpcXVpZGl0eS52MWJldGExLlBvb2xSZWNvcmRCFMjeHwDy3h8MeWFtbDoicG9vbHMiUgtwb29sUmVjb3JkczoI6KAfAIigHwA=');
