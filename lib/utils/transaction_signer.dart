import 'package:dartz/dartz.dart';
import 'package:transaction_signing_gateway/model/transaction_hash.dart';
import 'package:transaction_signing_gateway/model/transaction_broadcasting_failure.dart';
import 'package:transaction_signing_gateway/model/wallet_lookup_key.dart';
import 'package:transaction_signing_gateway/transaction_signing_gateway.dart';

class StarportTransactionSigner {
  /// Signs AlanTransactions and returns `TransactionHash` or throws `TransactionBroadcastingFailure`
  static Future<Either<TransactionBroadcastingFailure, TransactionHash>>
      signAndBroadcastTransaction({
    required WalletPublicInfo info,
    required String password,
    required UnsignedAlanTransaction unsignedTransaction,
    required TransactionSigningGateway transactionSigningGateway,
  }) async {
    /// Obtain a `WalletLookupKey` and sign transaction
    final walletLookupKey = WalletLookupKey(
      walletId: info.walletId,
      chainId: info.chainId,
      password: password,
    );

    var signingResult = await transactionSigningGateway.signTransaction(
      transaction: unsignedTransaction,
      walletLookupKey: walletLookupKey,
    );

    final signed = signingResult.getOrElse(
      () => throw "Cannot sign transaction: $signingResult",
    );

    /// Broadcast Signed Transaction to the blockhain
    final broadcastingResult =
        await transactionSigningGateway.broadcastTransaction(
      walletLookupKey: walletLookupKey,
      transaction: signed,
    );

    return broadcastingResult;
  }
}
