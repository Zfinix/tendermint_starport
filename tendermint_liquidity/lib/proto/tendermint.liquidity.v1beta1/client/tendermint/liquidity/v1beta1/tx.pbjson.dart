///
//  Generated code. Do not modify.
//  source: tendermint/liquidity/v1beta1/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgCreatePoolDescriptor instead')
const MsgCreatePool$json = const {
  '1': 'MsgCreatePool',
  '2': const [
    const {'1': 'pool_creator_address', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'poolCreatorAddress'},
    const {'1': 'pool_type_id', '3': 2, '4': 1, '5': 13, '8': const {}, '10': 'poolTypeId'},
    const {'1': 'deposit_coins', '3': 4, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'depositCoins'},
  ],
  '7': const {},
};

/// Descriptor for `MsgCreatePool`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreatePoolDescriptor = $convert.base64Decode('Cg1Nc2dDcmVhdGVQb29sEsYBChRwb29sX2NyZWF0b3JfYWRkcmVzcxgBIAEoCUKTAfLeHxt5YW1sOiJwb29sX2NyZWF0b3JfYWRkcmVzcyKSQXEyLWFjY291bnQgYWRkcmVzcyBvZiB0aGUgb3JpZ2luIG9mIHRoaXMgbWVzc2FnZUovImNvc21vczFlMzV5NjlyaHJ0N3k0eWNlNWw1dTczc2pueHUwbDMzd3Z6bnl1biKiAg5zZGsuQWNjQWRkcmVzc1IScG9vbENyZWF0b3JBZGRyZXNzEkoKDHBvb2xfdHlwZV9pZBgCIAEoDUIo8t4fE3lhbWw6InBvb2xfdHlwZV9pZCKSQQ5KAyIxIqICBnVpbnQzMlIKcG9vbFR5cGVJZBLuAQoNZGVwb3NpdF9jb2lucxgEIAMoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkKtAcjeHwDy3h8UeWFtbDoiZGVwb3NpdF9jb2lucyKq3x8oZ2l0aHViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBlcy5Db2luc5JBYkpUW3siZGVub20iOiAiZGVub21YIiwgImFtb3VudCI6ICIxMDAwMDAwIn0sIHsiZGVub20iOiAiZGVub21ZIiwgImFtb3VudCI6ICIyMDAwMDAwIn1dogIJc2RrLkNvaW5zUgxkZXBvc2l0Q29pbnM6COigHwCIoB8A');
@$core.Deprecated('Use msgCreatePoolResponseDescriptor instead')
const MsgCreatePoolResponse$json = const {
  '1': 'MsgCreatePoolResponse',
};

/// Descriptor for `MsgCreatePoolResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreatePoolResponseDescriptor = $convert.base64Decode('ChVNc2dDcmVhdGVQb29sUmVzcG9uc2U=');
@$core.Deprecated('Use msgDepositWithinBatchDescriptor instead')
const MsgDepositWithinBatch$json = const {
  '1': 'MsgDepositWithinBatch',
  '2': const [
    const {'1': 'depositor_address', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'depositorAddress'},
    const {'1': 'pool_id', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'poolId'},
    const {'1': 'deposit_coins', '3': 3, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'depositCoins'},
  ],
  '7': const {},
};

/// Descriptor for `MsgDepositWithinBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDepositWithinBatchDescriptor = $convert.base64Decode('ChVNc2dEZXBvc2l0V2l0aGluQmF0Y2gSvgEKEWRlcG9zaXRvcl9hZGRyZXNzGAEgASgJQpAB8t4fGHlhbWw6ImRlcG9zaXRvcl9hZGRyZXNzIpJBcTItYWNjb3VudCBhZGRyZXNzIG9mIHRoZSBvcmlnaW4gb2YgdGhpcyBtZXNzYWdlSi8iY29zbW9zMWUzNXk2OXJocnQ3eTR5Y2U1bDV1NzNzam54dTBsMzN3dnpueXVuIqICDnNkay5BY2NBZGRyZXNzUhBkZXBvc2l0b3JBZGRyZXNzEkcKB3Bvb2xfaWQYAiABKARCLvLeHw55YW1sOiJwb29sX2lkIureHwdwb29sX2lkkkEOSgMiMSKiAgZ1aW50NjRSBnBvb2xJZBLuAQoNZGVwb3NpdF9jb2lucxgDIAMoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkKtAcjeHwDy3h8UeWFtbDoiZGVwb3NpdF9jb2lucyKq3x8oZ2l0aHViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBlcy5Db2luc5JBYkpUW3siZGVub20iOiAiZGVub21YIiwgImFtb3VudCI6ICIxMDAwMDAwIn0sIHsiZGVub20iOiAiZGVub21ZIiwgImFtb3VudCI6ICIyMDAwMDAwIn1dogIJc2RrLkNvaW5zUgxkZXBvc2l0Q29pbnM6COigHwCIoB8A');
@$core.Deprecated('Use msgDepositWithinBatchResponseDescriptor instead')
const MsgDepositWithinBatchResponse$json = const {
  '1': 'MsgDepositWithinBatchResponse',
};

/// Descriptor for `MsgDepositWithinBatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDepositWithinBatchResponseDescriptor = $convert.base64Decode('Ch1Nc2dEZXBvc2l0V2l0aGluQmF0Y2hSZXNwb25zZQ==');
@$core.Deprecated('Use msgWithdrawWithinBatchDescriptor instead')
const MsgWithdrawWithinBatch$json = const {
  '1': 'MsgWithdrawWithinBatch',
  '2': const [
    const {'1': 'withdrawer_address', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'withdrawerAddress'},
    const {'1': 'pool_id', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'poolId'},
    const {'1': 'pool_coin', '3': 3, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'poolCoin'},
  ],
  '7': const {},
};

/// Descriptor for `MsgWithdrawWithinBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgWithdrawWithinBatchDescriptor = $convert.base64Decode('ChZNc2dXaXRoZHJhd1dpdGhpbkJhdGNoEsEBChJ3aXRoZHJhd2VyX2FkZHJlc3MYASABKAlCkQHy3h8ZeWFtbDoid2l0aGRyYXdlcl9hZGRyZXNzIpJBcTItYWNjb3VudCBhZGRyZXNzIG9mIHRoZSBvcmlnaW4gb2YgdGhpcyBtZXNzYWdlSi8iY29zbW9zMWUzNXk2OXJocnQ3eTR5Y2U1bDV1NzNzam54dTBsMzN3dnpueXVuIqICDnNkay5BY2NBZGRyZXNzUhF3aXRoZHJhd2VyQWRkcmVzcxJHCgdwb29sX2lkGAIgASgEQi7y3h8OeWFtbDoicG9vbF9pZCLq3h8HcG9vbF9pZJJBDkoDIjEiogIGdWludDY0UgZwb29sSWQSxAEKCXBvb2xfY29pbhgDIAEoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkKLAcjeHwDy3h8QeWFtbDoicG9vbF9jb2luIpJBcEpjeyJkZW5vbSI6ICJwb29sRDM1QTBDQzE2RUU1OThGOTBCMDQ0Q0UyOTZBNDA1QkE5QzM4MUUzODgzNzU5OUQ5NkYyRjcwQzJGMDJBMjNBNCIsICJhbW91bnQiOiAiMTAwMCJ9ogIIc2RrLkNvaW5SCHBvb2xDb2luOgjooB8AiKAfAA==');
@$core.Deprecated('Use msgWithdrawWithinBatchResponseDescriptor instead')
const MsgWithdrawWithinBatchResponse$json = const {
  '1': 'MsgWithdrawWithinBatchResponse',
};

/// Descriptor for `MsgWithdrawWithinBatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgWithdrawWithinBatchResponseDescriptor = $convert.base64Decode('Ch5Nc2dXaXRoZHJhd1dpdGhpbkJhdGNoUmVzcG9uc2U=');
@$core.Deprecated('Use msgSwapWithinBatchDescriptor instead')
const MsgSwapWithinBatch$json = const {
  '1': 'MsgSwapWithinBatch',
  '2': const [
    const {'1': 'swap_requester_address', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'swapRequesterAddress'},
    const {'1': 'pool_id', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'poolId'},
    const {'1': 'swap_type_id', '3': 3, '4': 1, '5': 13, '8': const {}, '10': 'swapTypeId'},
    const {'1': 'offer_coin', '3': 4, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'offerCoin'},
    const {'1': 'demand_coin_denom', '3': 5, '4': 1, '5': 9, '8': const {}, '10': 'demandCoinDenom'},
    const {'1': 'offer_coin_fee', '3': 6, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'offerCoinFee'},
    const {'1': 'order_price', '3': 7, '4': 1, '5': 9, '8': const {}, '10': 'orderPrice'},
  ],
  '7': const {},
};

/// Descriptor for `MsgSwapWithinBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSwapWithinBatchDescriptor = $convert.base64Decode('ChJNc2dTd2FwV2l0aGluQmF0Y2gSzAEKFnN3YXBfcmVxdWVzdGVyX2FkZHJlc3MYASABKAlClQHy3h8deWFtbDoic3dhcF9yZXF1ZXN0ZXJfYWRkcmVzcyKSQXEyLWFjY291bnQgYWRkcmVzcyBvZiB0aGUgb3JpZ2luIG9mIHRoaXMgbWVzc2FnZUovImNvc21vczFlMzV5NjlyaHJ0N3k0eWNlNWw1dTczc2pueHUwbDMzd3Z6bnl1biKiAg5zZGsuQWNjQWRkcmVzc1IUc3dhcFJlcXVlc3RlckFkZHJlc3MSRwoHcG9vbF9pZBgCIAEoBEIu8t4fDnlhbWw6InBvb2xfaWQi6t4fB3Bvb2xfaWSSQQ5KAyIxIqICBnVpbnQ2NFIGcG9vbElkEkoKDHN3YXBfdHlwZV9pZBgDIAEoDUIo8t4fE3lhbWw6InN3YXBfdHlwZV9pZCKSQQ5KAyIxIqICBnVpbnQzMlIKc3dhcFR5cGVJZBKLAQoKb2ZmZXJfY29pbhgEIAEoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkJRyN4fAPLeHxF5YW1sOiJvZmZlcl9jb2luIpJBNUooeyJkZW5vbSI6ICJkZW5vbVgiLCAiYW1vdW50IjogIjEwMDAwMDAifaICCHNkay5Db2luUglvZmZlckNvaW4SVQoRZGVtYW5kX2NvaW5fZGVub20YBSABKAlCKfLeHxh5YW1sOiJkZW1hbmRfY29pbl9kZW5vbSKSQQpKCCJkZW5vbUIiUg9kZW1hbmRDb2luRGVub20SkwEKDm9mZmVyX2NvaW5fZmVlGAYgASgLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQlLI3h8A8t4fFXlhbWw6Im9mZmVyX2NvaW5fZmVlIpJBMkoleyJkZW5vbSI6ICJkZW5vbVgiLCAiYW1vdW50IjogIjUwMDAifaICCHNkay5Db2luUgxvZmZlckNvaW5GZWUSeQoLb3JkZXJfcHJpY2UYByABKAlCWPLeHxJ5YW1sOiJvcmRlcl9wcmljZSLa3h8mZ2l0aHViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBlcy5EZWPI3h8AkkERSgUiMS4xIqICB3Nkay5EZWNSCm9yZGVyUHJpY2U6COigHwCIoB8A');
@$core.Deprecated('Use msgSwapWithinBatchResponseDescriptor instead')
const MsgSwapWithinBatchResponse$json = const {
  '1': 'MsgSwapWithinBatchResponse',
};

/// Descriptor for `MsgSwapWithinBatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSwapWithinBatchResponseDescriptor = $convert.base64Decode('ChpNc2dTd2FwV2l0aGluQmF0Y2hSZXNwb25zZQ==');
