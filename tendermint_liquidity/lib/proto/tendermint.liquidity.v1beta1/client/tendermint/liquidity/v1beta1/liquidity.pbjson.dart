///
//  Generated code. Do not modify.
//  source: tendermint/liquidity/v1beta1/liquidity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use poolTypeDescriptor instead')
const PoolType$json = const {
  '1': 'PoolType',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '8': const {}, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'name'},
    const {'1': 'min_reserve_coin_num', '3': 3, '4': 1, '5': 13, '8': const {}, '10': 'minReserveCoinNum'},
    const {'1': 'max_reserve_coin_num', '3': 4, '4': 1, '5': 13, '8': const {}, '10': 'maxReserveCoinNum'},
    const {'1': 'description', '3': 5, '4': 1, '5': 9, '8': const {}, '10': 'description'},
  ],
  '7': const {},
};

/// Descriptor for `PoolType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List poolTypeDescriptor = $convert.base64Decode('CghQb29sVHlwZRIuCgJpZBgBIAEoDUIe8t4fCXlhbWw6ImlkIpJBDkoDIjEiogIGdWludDMyUgJpZBJGCgRuYW1lGAIgASgJQjLy3h8LeWFtbDoibmFtZSKSQSBKHiJDb25zdGFudFByb2R1Y3RMaXF1aWRpdHlQb29sIlIEbmFtZRJhChRtaW5fcmVzZXJ2ZV9jb2luX251bRgDIAEoDUIw8t4fG3lhbWw6Im1pbl9yZXNlcnZlX2NvaW5fbnVtIpJBDkoDIjIiogIGdWludDMyUhFtaW5SZXNlcnZlQ29pbk51bRJhChRtYXhfcmVzZXJ2ZV9jb2luX251bRgEIAEoDUIw8t4fG3lhbWw6Im1heF9yZXNlcnZlX2NvaW5fbnVtIpJBDkoDIjIiogIGdWludDMyUhFtYXhSZXNlcnZlQ29pbk51bRI4CgtkZXNjcmlwdGlvbhgFIAEoCUIW8t4fEnlhbWw6ImRlc2NyaXB0aW9uIlILZGVzY3JpcHRpb246BOigHwE=');
@$core.Deprecated('Use paramsDescriptor instead')
const Params$json = const {
  '1': 'Params',
  '2': const [
    const {'1': 'pool_types', '3': 1, '4': 3, '5': 11, '6': '.tendermint.liquidity.v1beta1.PoolType', '8': const {}, '10': 'poolTypes'},
    const {'1': 'min_init_deposit_amount', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'minInitDepositAmount'},
    const {'1': 'init_pool_coin_mint_amount', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'initPoolCoinMintAmount'},
    const {'1': 'max_reserve_coin_amount', '3': 4, '4': 1, '5': 9, '8': const {}, '10': 'maxReserveCoinAmount'},
    const {'1': 'pool_creation_fee', '3': 5, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'poolCreationFee'},
    const {'1': 'swap_fee_rate', '3': 6, '4': 1, '5': 9, '8': const {}, '10': 'swapFeeRate'},
    const {'1': 'withdraw_fee_rate', '3': 7, '4': 1, '5': 9, '8': const {}, '10': 'withdrawFeeRate'},
    const {'1': 'max_order_amount_ratio', '3': 8, '4': 1, '5': 9, '8': const {}, '10': 'maxOrderAmountRatio'},
    const {'1': 'unit_batch_height', '3': 9, '4': 1, '5': 13, '8': const {}, '10': 'unitBatchHeight'},
    const {'1': 'circuit_breaker_enabled', '3': 10, '4': 1, '5': 8, '8': const {}, '10': 'circuitBreakerEnabled'},
  ],
  '7': const {},
};

/// Descriptor for `Params`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramsDescriptor = $convert.base64Decode('CgZQYXJhbXMSYAoKcG9vbF90eXBlcxgBIAMoCzImLnRlbmRlcm1pbnQubGlxdWlkaXR5LnYxYmV0YTEuUG9vbFR5cGVCGfLeHxF5YW1sOiJwb29sX3R5cGVzIsjeHwBSCXBvb2xUeXBlcxKfAQoXbWluX2luaXRfZGVwb3NpdF9hbW91bnQYAiABKAlCaPLeHx55YW1sOiJtaW5faW5pdF9kZXBvc2l0X2Ftb3VudCLa3h8mZ2l0aHViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBlcy5JbnTI3h8AkkEVSgkiMTAwMDAwMCKiAgdzZGsuSW50UhRtaW5Jbml0RGVwb3NpdEFtb3VudBKnAQoaaW5pdF9wb29sX2NvaW5fbWludF9hbW91bnQYAyABKAlCa/LeHyF5YW1sOiJpbml0X3Bvb2xfY29pbl9taW50X2Ftb3VudCLa3h8mZ2l0aHViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBlcy5JbnTI3h8AkkEVSgkiMTAwMDAwMCKiAgdzZGsuSW50UhZpbml0UG9vbENvaW5NaW50QW1vdW50EqUBChdtYXhfcmVzZXJ2ZV9jb2luX2Ftb3VudBgEIAEoCUJu8t4fHnlhbWw6Im1heF9yZXNlcnZlX2NvaW5fYW1vdW50ItreHyZnaXRodWIuY29tL2Nvc21vcy9jb3Ntb3Mtc2RrL3R5cGVzLkludMjeHwCSQRtKDyIxMDAwMDAwMDAwMDAwIqICB3Nkay5JbnRSFG1heFJlc2VydmVDb2luQW1vdW50EtABChFwb29sX2NyZWF0aW9uX2ZlZRgFIAMoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkKIAfLeHxh5YW1sOiJwb29sX2NyZWF0aW9uX2ZlZSLI3h8Aqt8fKGdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQ29pbnOSQTlKK1t7ImRlbm9tIjogInVhdG9tIiwgImFtb3VudCI6ICIxMDAwMDAwMDAifV2iAglzZGsuQ29pbnNSD3Bvb2xDcmVhdGlvbkZlZRKAAQoNc3dhcF9mZWVfcmF0ZRgGIAEoCUJc8t4fFHlhbWw6InN3YXBfZmVlX3JhdGUi2t4fJmdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuRGVjyN4fAJJBE0oHIjAuMDAzIqICB3Nkay5EZWNSC3N3YXBGZWVSYXRlEowBChF3aXRoZHJhd19mZWVfcmF0ZRgHIAEoCUJg8t4fGHlhbWw6IndpdGhkcmF3X2ZlZV9yYXRlItreHyZnaXRodWIuY29tL2Nvc21vcy9jb3Ntb3Mtc2RrL3R5cGVzLkRlY8jeHwCSQRNKByIwLjAwMyKiAgdzZGsuRGVjUg93aXRoZHJhd0ZlZVJhdGUSmgEKFm1heF9vcmRlcl9hbW91bnRfcmF0aW8YCCABKAlCZfLeHx15YW1sOiJtYXhfb3JkZXJfYW1vdW50X3JhdGlvItreHyZnaXRodWIuY29tL2Nvc21vcy9jb3Ntb3Mtc2RrL3R5cGVzLkRlY8jeHwCSQRNKByIwLjAwMyKiAgdzZGsuRGVjUhNtYXhPcmRlckFtb3VudFJhdGlvElkKEXVuaXRfYmF0Y2hfaGVpZ2h0GAkgASgNQi3y3h8YeWFtbDoidW5pdF9iYXRjaF9oZWlnaHQikkEOSgMiMSKiAgZ1aW50MzJSD3VuaXRCYXRjaEhlaWdodBJtChdjaXJjdWl0X2JyZWFrZXJfZW5hYmxlZBgKIAEoCEI18t4fHnlhbWw6ImNpcmN1aXRfYnJlYWtlcl9lbmFibGVkIpJBEEoHImZhbHNlIqICBGJvb2xSFWNpcmN1aXRCcmVha2VyRW5hYmxlZDoI6KAfAZigHwA=');
@$core.Deprecated('Use poolDescriptor instead')
const Pool$json = const {
  '1': 'Pool',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'id'},
    const {'1': 'type_id', '3': 2, '4': 1, '5': 13, '8': const {}, '10': 'typeId'},
    const {'1': 'reserve_coin_denoms', '3': 3, '4': 3, '5': 9, '8': const {}, '10': 'reserveCoinDenoms'},
    const {'1': 'reserve_account_address', '3': 4, '4': 1, '5': 9, '8': const {}, '10': 'reserveAccountAddress'},
    const {'1': 'pool_coin_denom', '3': 5, '4': 1, '5': 9, '8': const {}, '10': 'poolCoinDenom'},
  ],
  '7': const {},
};

/// Descriptor for `Pool`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List poolDescriptor = $convert.base64Decode('CgRQb29sEjQKAmlkGAEgASgEQiTy3h8JeWFtbDoiaWQi6t4fAmlkkkEOSgMiMSKiAgZ1aW50NjRSAmlkEjwKB3R5cGVfaWQYAiABKA1CI/LeHw55YW1sOiJ0eXBlX2lkIpJBDkoDIjEiogIGdWludDMyUgZ0eXBlSWQSZgoTcmVzZXJ2ZV9jb2luX2Rlbm9tcxgDIAMoCUI28t4fGnlhbWw6InJlc2VydmVfY29pbl9kZW5vbXMikkEVShNbImRlbm9tWCIsImRlbm9tWSJdUhFyZXNlcnZlQ29pbkRlbm9tcxKfAQoXcmVzZXJ2ZV9hY2NvdW50X2FkZHJlc3MYBCABKAlCZ/LeHx55YW1sOiJyZXNlcnZlX2FjY291bnRfYWRkcmVzcyKSQUJKLyJjb3Ntb3MxNmRkcWVzdHd1a3YwanpjeWZuM2ZkZnE5aDJ3cnM4M2NyNHJmbTMiogIOc2RrLkFjY0FkZHJlc3NSFXJlc2VydmVBY2NvdW50QWRkcmVzcxKNAQoPcG9vbF9jb2luX2Rlbm9tGAUgASgJQmXy3h8WeWFtbDoicG9vbF9jb2luX2Rlbm9tIpJBSEpGInBvb2xEMzVBMENDMTZFRTU5OEY5MEIwNDRDRTI5NkE0MDVCQTlDMzgxRTM4ODM3NTk5RDk2RjJGNzBDMkYwMkEyM0E0IlINcG9vbENvaW5EZW5vbToI6KAfAZigHwE=');
@$core.Deprecated('Use poolMetadataDescriptor instead')
const PoolMetadata$json = const {
  '1': 'PoolMetadata',
  '2': const [
    const {'1': 'pool_id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'poolId'},
    const {'1': 'pool_coin_total_supply', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'poolCoinTotalSupply'},
    const {'1': 'reserve_coins', '3': 3, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'reserveCoins'},
  ],
  '7': const {},
};

/// Descriptor for `PoolMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List poolMetadataDescriptor = $convert.base64Decode('CgxQb29sTWV0YWRhdGESRwoHcG9vbF9pZBgBIAEoBEIu8t4fDnlhbWw6InBvb2xfaWQi6t4fB3Bvb2xfaWSSQQ5KAyIxIqICBnVpbnQ2NFIGcG9vbElkEuwBChZwb29sX2NvaW5fdG90YWxfc3VwcGx5GAIgASgLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQpsB8t4fHXlhbWw6InBvb2xfY29pbl90b3RhbF9zdXBwbHkiyN4fAJJBc0pmeyJkZW5vbSI6ICJwb29sRDM1QTBDQzE2RUU1OThGOTBCMDQ0Q0UyOTZBNDA1QkE5QzM4MUUzODgzNzU5OUQ5NkYyRjcwQzJGMDJBMjNBNCIsICJhbW91bnQiOiAiMTAwMDAwMCJ9ogIIc2RrLkNvaW5SE3Bvb2xDb2luVG90YWxTdXBwbHkS7gEKDXJlc2VydmVfY29pbnMYAyADKAsyGS5jb3Ntb3MuYmFzZS52MWJldGExLkNvaW5CrQHy3h8UeWFtbDoicmVzZXJ2ZV9jb2lucyLI3h8Aqt8fKGdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQ29pbnOSQWJKVFt7ImRlbm9tIjogImRlbm9tWCIsICJhbW91bnQiOiAiMTAwMDAwMCJ9LCB7ImRlbm9tIjogImRlbm9tWSIsICJhbW91bnQiOiAiMjAwMDAwMCJ9XaICCXNkay5Db2luc1IMcmVzZXJ2ZUNvaW5zOgjooB8BmKAfAQ==');
@$core.Deprecated('Use poolBatchDescriptor instead')
const PoolBatch$json = const {
  '1': 'PoolBatch',
  '2': const [
    const {'1': 'pool_id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'poolId'},
    const {'1': 'index', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'index'},
    const {'1': 'begin_height', '3': 3, '4': 1, '5': 3, '8': const {}, '10': 'beginHeight'},
    const {'1': 'deposit_msg_index', '3': 4, '4': 1, '5': 4, '8': const {}, '10': 'depositMsgIndex'},
    const {'1': 'withdraw_msg_index', '3': 5, '4': 1, '5': 4, '8': const {}, '10': 'withdrawMsgIndex'},
    const {'1': 'swap_msg_index', '3': 6, '4': 1, '5': 4, '8': const {}, '10': 'swapMsgIndex'},
    const {'1': 'executed', '3': 7, '4': 1, '5': 8, '8': const {}, '10': 'executed'},
  ],
  '7': const {},
};

/// Descriptor for `PoolBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List poolBatchDescriptor = $convert.base64Decode('CglQb29sQmF0Y2gSRwoHcG9vbF9pZBgBIAEoBEIu8t4fDnlhbWw6InBvb2xfaWQi6t4fB3Bvb2xfaWSSQQ5KAyIxIqICBnVpbnQ2NFIGcG9vbElkEjcKBWluZGV4GAIgASgEQiHy3h8MeWFtbDoiaW5kZXgikkEOSgMiMSKiAgZ1aW50NjRSBWluZGV4Ek0KDGJlZ2luX2hlaWdodBgDIAEoA0Iq8t4fE3lhbWw6ImJlZ2luX2hlaWdodCKSQRBKBiIxMDAwIqICBWludDY0UgtiZWdpbkhlaWdodBJZChFkZXBvc2l0X21zZ19pbmRleBgEIAEoBEIt8t4fGHlhbWw6ImRlcG9zaXRfbXNnX2luZGV4IpJBDkoDIjEiogIGdWludDY0Ug9kZXBvc2l0TXNnSW5kZXgSXAoSd2l0aGRyYXdfbXNnX2luZGV4GAUgASgEQi7y3h8ZeWFtbDoid2l0aGRyYXdfbXNnX2luZGV4IpJBDkoDIjEiogIGdWludDY0UhB3aXRoZHJhd01zZ0luZGV4ElAKDnN3YXBfbXNnX2luZGV4GAYgASgEQiry3h8VeWFtbDoic3dhcF9tc2dfaW5kZXgikkEOSgMiMSKiAgZ1aW50NjRSDHN3YXBNc2dJbmRleBI4CghleGVjdXRlZBgHIAEoCEIc8t4fD3lhbWw6ImV4ZWN1dGVkIpJBBkoEdHJ1ZVIIZXhlY3V0ZWQ6COigHwGYoB8B');
@$core.Deprecated('Use depositMsgStateDescriptor instead')
const DepositMsgState$json = const {
  '1': 'DepositMsgState',
  '2': const [
    const {'1': 'msg_height', '3': 1, '4': 1, '5': 3, '8': const {}, '10': 'msgHeight'},
    const {'1': 'msg_index', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'msgIndex'},
    const {'1': 'executed', '3': 3, '4': 1, '5': 8, '8': const {}, '10': 'executed'},
    const {'1': 'succeeded', '3': 4, '4': 1, '5': 8, '8': const {}, '10': 'succeeded'},
    const {'1': 'to_be_deleted', '3': 5, '4': 1, '5': 8, '8': const {}, '10': 'toBeDeleted'},
    const {'1': 'msg', '3': 6, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.MsgDepositWithinBatch', '8': const {}, '10': 'msg'},
  ],
};

/// Descriptor for `DepositMsgState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List depositMsgStateDescriptor = $convert.base64Decode('Cg9EZXBvc2l0TXNnU3RhdGUSRwoKbXNnX2hlaWdodBgBIAEoA0Io8t4fEXlhbWw6Im1zZ19oZWlnaHQikkEQSgYiMTAwMCKiAgVpbnQ2NFIJbXNnSGVpZ2h0EkIKCW1zZ19pbmRleBgCIAEoBEIl8t4fEHlhbWw6Im1zZ19pbmRleCKSQQ5KAyIxIqICBnVpbnQ2NFIIbXNnSW5kZXgSOAoIZXhlY3V0ZWQYAyABKAhCHPLeHw95YW1sOiJleGVjdXRlZCKSQQZKBHRydWVSCGV4ZWN1dGVkEjsKCXN1Y2NlZWRlZBgEIAEoCEId8t4fEHlhbWw6InN1Y2NlZWRlZCKSQQZKBHRydWVSCXN1Y2NlZWRlZBJFCg10b19iZV9kZWxldGVkGAUgASgIQiHy3h8UeWFtbDoidG9fYmVfZGVsZXRlZCKSQQZKBHRydWVSC3RvQmVEZWxldGVkElUKA21zZxgGIAEoCzIzLnRlbmRlcm1pbnQubGlxdWlkaXR5LnYxYmV0YTEuTXNnRGVwb3NpdFdpdGhpbkJhdGNoQg7y3h8KeWFtbDoibXNnIlIDbXNn');
@$core.Deprecated('Use withdrawMsgStateDescriptor instead')
const WithdrawMsgState$json = const {
  '1': 'WithdrawMsgState',
  '2': const [
    const {'1': 'msg_height', '3': 1, '4': 1, '5': 3, '8': const {}, '10': 'msgHeight'},
    const {'1': 'msg_index', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'msgIndex'},
    const {'1': 'executed', '3': 3, '4': 1, '5': 8, '8': const {}, '10': 'executed'},
    const {'1': 'succeeded', '3': 4, '4': 1, '5': 8, '8': const {}, '10': 'succeeded'},
    const {'1': 'to_be_deleted', '3': 5, '4': 1, '5': 8, '8': const {}, '10': 'toBeDeleted'},
    const {'1': 'msg', '3': 6, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.MsgWithdrawWithinBatch', '8': const {}, '10': 'msg'},
  ],
};

/// Descriptor for `WithdrawMsgState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withdrawMsgStateDescriptor = $convert.base64Decode('ChBXaXRoZHJhd01zZ1N0YXRlEkcKCm1zZ19oZWlnaHQYASABKANCKPLeHxF5YW1sOiJtc2dfaGVpZ2h0IpJBEEoGIjEwMDAiogIFaW50NjRSCW1zZ0hlaWdodBJCCgltc2dfaW5kZXgYAiABKARCJfLeHxB5YW1sOiJtc2dfaW5kZXgikkEOSgMiMSKiAgZ1aW50NjRSCG1zZ0luZGV4EjgKCGV4ZWN1dGVkGAMgASgIQhzy3h8PeWFtbDoiZXhlY3V0ZWQikkEGSgR0cnVlUghleGVjdXRlZBI7CglzdWNjZWVkZWQYBCABKAhCHfLeHxB5YW1sOiJzdWNjZWVkZWQikkEGSgR0cnVlUglzdWNjZWVkZWQSRQoNdG9fYmVfZGVsZXRlZBgFIAEoCEIh8t4fFHlhbWw6InRvX2JlX2RlbGV0ZWQikkEGSgR0cnVlUgt0b0JlRGVsZXRlZBJWCgNtc2cYBiABKAsyNC50ZW5kZXJtaW50LmxpcXVpZGl0eS52MWJldGExLk1zZ1dpdGhkcmF3V2l0aGluQmF0Y2hCDvLeHwp5YW1sOiJtc2ciUgNtc2c=');
@$core.Deprecated('Use swapMsgStateDescriptor instead')
const SwapMsgState$json = const {
  '1': 'SwapMsgState',
  '2': const [
    const {'1': 'msg_height', '3': 1, '4': 1, '5': 3, '8': const {}, '10': 'msgHeight'},
    const {'1': 'msg_index', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'msgIndex'},
    const {'1': 'executed', '3': 3, '4': 1, '5': 8, '8': const {}, '10': 'executed'},
    const {'1': 'succeeded', '3': 4, '4': 1, '5': 8, '8': const {}, '10': 'succeeded'},
    const {'1': 'to_be_deleted', '3': 5, '4': 1, '5': 8, '8': const {}, '10': 'toBeDeleted'},
    const {'1': 'order_expiry_height', '3': 6, '4': 1, '5': 3, '8': const {}, '10': 'orderExpiryHeight'},
    const {'1': 'exchanged_offer_coin', '3': 7, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'exchangedOfferCoin'},
    const {'1': 'remaining_offer_coin', '3': 8, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'remainingOfferCoin'},
    const {'1': 'reserved_offer_coin_fee', '3': 9, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'reservedOfferCoinFee'},
    const {'1': 'msg', '3': 10, '4': 1, '5': 11, '6': '.tendermint.liquidity.v1beta1.MsgSwapWithinBatch', '8': const {}, '10': 'msg'},
  ],
};

/// Descriptor for `SwapMsgState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swapMsgStateDescriptor = $convert.base64Decode('CgxTd2FwTXNnU3RhdGUSRwoKbXNnX2hlaWdodBgBIAEoA0Io8t4fEXlhbWw6Im1zZ19oZWlnaHQikkEQSgYiMTAwMCKiAgVpbnQ2NFIJbXNnSGVpZ2h0EkIKCW1zZ19pbmRleBgCIAEoBEIl8t4fEHlhbWw6Im1zZ19pbmRleCKSQQ5KAyIxIqICBnVpbnQ2NFIIbXNnSW5kZXgSOAoIZXhlY3V0ZWQYAyABKAhCHPLeHw95YW1sOiJleGVjdXRlZCKSQQZKBHRydWVSCGV4ZWN1dGVkEjsKCXN1Y2NlZWRlZBgEIAEoCEId8t4fEHlhbWw6InN1Y2NlZWRlZCKSQQZKBHRydWVSCXN1Y2NlZWRlZBJFCg10b19iZV9kZWxldGVkGAUgASgIQiHy3h8UeWFtbDoidG9fYmVfZGVsZXRlZCKSQQZKBHRydWVSC3RvQmVEZWxldGVkEmEKE29yZGVyX2V4cGlyeV9oZWlnaHQYBiABKANCMfLeHxp5YW1sOiJvcmRlcl9leHBpcnlfaGVpZ2h0IpJBEEoGIjEwMDAiogIFaW50NjRSEW9yZGVyRXhwaXJ5SGVpZ2h0EqcBChRleGNoYW5nZWRfb2ZmZXJfY29pbhgHIAEoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkJayN4fAPLeHxt5YW1sOiJleGNoYW5nZWRfb2ZmZXJfY29pbiKSQTRKJ3siZGVub20iOiAiZGVub21YIiwgImFtb3VudCI6ICI2MDAwMDAifaICCHNkay5Db2luUhJleGNoYW5nZWRPZmZlckNvaW4SpwEKFHJlbWFpbmluZ19vZmZlcl9jb2luGAggASgLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQlrI3h8A8t4fG3lhbWw6InJlbWFpbmluZ19vZmZlcl9jb2luIpJBNEoneyJkZW5vbSI6ICJkZW5vbVgiLCAiYW1vdW50IjogIjQwMDAwMCJ9ogIIc2RrLkNvaW5SEnJlbWFpbmluZ09mZmVyQ29pbhKtAQoXcmVzZXJ2ZWRfb2ZmZXJfY29pbl9mZWUYCSABKAsyGS5jb3Ntb3MuYmFzZS52MWJldGExLkNvaW5CW8jeHwDy3h8eeWFtbDoicmVzZXJ2ZWRfb2ZmZXJfY29pbl9mZWUikkEySiV7ImRlbm9tIjogImRlbm9tWCIsICJhbW91bnQiOiAiNTAwMCJ9ogIIc2RrLkNvaW5SFHJlc2VydmVkT2ZmZXJDb2luRmVlElIKA21zZxgKIAEoCzIwLnRlbmRlcm1pbnQubGlxdWlkaXR5LnYxYmV0YTEuTXNnU3dhcFdpdGhpbkJhdGNoQg7y3h8KeWFtbDoibXNnIlIDbXNn');
