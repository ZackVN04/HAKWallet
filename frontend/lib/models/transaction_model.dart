class TransactionModel {
  final String txHash;
  final String toAddress;
  final double valueEth;
  final String status;
  final DateTime timestamp;

  TransactionModel({
    required this.txHash,
    required this.toAddress,
    required this.valueEth,
    required this.status,
    required this.timestamp,
  });
}
