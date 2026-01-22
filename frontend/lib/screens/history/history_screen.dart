import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/wallet_provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wallet = context.watch<WalletProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Transaction History')),
      body: wallet.transactions.isEmpty
          ? const Center(child: Text('No transactions'))
          : ListView.builder(
              itemCount: wallet.transactions.length,
              itemBuilder: (_, i) {
                final tx = wallet.transactions[i];
                return ListTile(
                  leading: Icon(
                    tx.status == 'success'
                        ? Icons.check_circle
                        : Icons.schedule,
                    color: tx.status == 'success'
                        ? Colors.green
                        : Colors.orange,
                  ),
                  title: Text('${tx.valueEth} ETH'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('To: ${tx.toAddress}'),
                      Text(
                        tx.txHash,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        tx.timestamp.toLocal().toString(),
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
