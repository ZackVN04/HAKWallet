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

  /// Parse từ backend JSON
  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      txHash: json['tx_hash'],
      toAddress: json['to_address'],
      valueEth: (json['value_eth'] as num).toDouble(),
      status: json['status'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
