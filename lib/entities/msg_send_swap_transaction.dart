import 'package:starport_template/model/single_tx_model.dart';
import 'package:starport_template/model/tx_model.dart';

class MsgSendSwapTransaction {
  final int poolId;
  final int swapTypeId;
  final double offerCoinFeeAmount;
  final double orderPrice;
  final TxCoin offerCoin;
  final TxCoin demandCoin;
  final Function(SingleTxModel) onResult;

  MsgSendSwapTransaction({
    required this.poolId,
    required this.swapTypeId,
    required this.offerCoinFeeAmount,
    required this.orderPrice,
    required this.offerCoin,
    required this.demandCoin,
    required this.onResult,
  });

  MsgSendSwapTransaction copyWith({
    int? poolId,
    int? swapTypeId,
    double? offerCoinFeeAmount,
    double? orderPrice,
    TxCoin? offerCoin,
    TxCoin? demandCoin,
    Function(SingleTxModel)? onResult,
  }) {
    return MsgSendSwapTransaction(
      poolId: poolId ?? this.poolId,
      swapTypeId: swapTypeId ?? this.swapTypeId,
      offerCoinFeeAmount: offerCoinFeeAmount ?? this.offerCoinFeeAmount,
      orderPrice: orderPrice ?? this.orderPrice,
      offerCoin: offerCoin ?? this.offerCoin,
      demandCoin: demandCoin ?? this.demandCoin,
      onResult: onResult ?? this.onResult,
    );
  }
}
