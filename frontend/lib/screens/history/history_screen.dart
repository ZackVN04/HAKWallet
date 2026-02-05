import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/wallet_provider.dart';
import '../../providers/user_provider.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  bool loading = false;
  String? error;

  @override
  void initState() {
    super.initState();

    /// 🔹 Load history lần đầu khi vào screen
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadHistory();
    });
  }

  Future<void> _loadHistory() async {
    final wallet = context.read<WalletProvider>();
    final token = context.read<UserProvider>().token;

    if (token == null) {
      setState(() {
        error = 'User not authenticated';
      });
      return;
    }

    setState(() {
      loading = true;
      error = null;
    });

    try {
      await wallet.fetchTransactionHistory(token);
    } catch (e) {
      setState(() {
        error = 'Failed to load transaction history';
      });
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final wallet = context.watch<WalletProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: loading ? null : _loadHistory,
          ),
        ],
      ),

      // ===== BODY =====
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : error != null
              ? Center(
                  child: Text(
                    error!,
                    style: const TextStyle(color: Colors.red),
                  ),
                )
              : wallet.transactions.isEmpty
                  ? const Center(
                      child: Text(
                        'No transactions yet',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  : Center(
                      child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(maxWidth: 700),
                        child: ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: wallet.transactions.length,
                          itemBuilder: (_, i) {
                            final tx = wallet.transactions[i];
                            return _transactionCard(context, tx);
                          },
                        ),
                      ),
                    ),
    );
  }

  // ======================
  // TRANSACTION CARD (GIỮ NGUYÊN UI)
  // ======================
  Widget _transactionCard(BuildContext context, tx) {
    final isSuccess = tx.status == 'success';

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== HEADER =====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      isSuccess
                          ? Icons.check_circle
                          : Icons.schedule,
                      color:
                          isSuccess ? Colors.green : Colors.orange,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      isSuccess ? 'Success' : 'Pending',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: isSuccess
                            ? Colors.green
                            : Colors.orange,
                      ),
                    ),
                  ],
                ),
                Text(
                  '${tx.valueEth} ETH',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const Divider(height: 24),

            // ===== TO ADDRESS =====
            const Text(
              'To',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SelectableText(
              tx.toAddress,
              style: const TextStyle(fontSize: 13),
            ),

            const SizedBox(height: 12),

            // ===== TX HASH =====
            const Text(
              'Transaction Hash',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SelectableText(
              tx.txHash,
              style: const TextStyle(fontSize: 13),
            ),

            const SizedBox(height: 12),

            // ===== TIME =====
            Text(
              tx.timestamp.toLocal().toString(),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
