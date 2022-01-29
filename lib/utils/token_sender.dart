import 'package:alan/alan.dart' as alan;
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:flutter/foundation.dart';
import 'package:starport_template/model/tx_model.dart';

import 'package:starport_template/utils/transaction_signer.dart';
import 'package:transaction_signing_gateway/alan/alan_transaction.dart';
import 'package:transaction_signing_gateway/gateway/transaction_signing_gateway.dart';
import 'package:transaction_signing_gateway/model/wallet_public_info.dart';

class TokenSender {
  TokenSender(this.transactionSigningGateway);

  TransactionSigningGateway transactionSigningGateway;

  /// Sends `balance` to `toAddress`
  Future<void> sendCosmosMoney(
    WalletPublicInfo info,
    TxCoin coin,
    String toAddress,
    String password,
  ) async {
    /// Transaction message
    final message = bank.MsgSend(
      fromAddress: info.publicAddress,
      toAddress: toAddress,
      amount: [
        alan.Coin(
          denom: coin.denom,
          amount: coin.amount.toString(),
        )
      ],
    );

    /// Sign and broadcast transaction
    final result = await StarportTransactionSigner.signAndBroadcastTransaction(
      info: info,
      password: password,
      unsignedTransaction: UnsignedAlanTransaction(messages: [message]),
      transactionSigningGateway: transactionSigningGateway,
    );

    result.fold(
      (fail) => throw fail,
      (hash) => debugPrint('new TX hash: ${hash.txHash}'),
    );
  }
}
