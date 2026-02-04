import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/wallet_provider.dart';
import '../../core/routes.dart';
import '../../widgets/responsive_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wallet = context.watch<WalletProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('HAKWallet'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              wallet.refreshBalanceMock();
            },
          ),
        ],
      ),

      // ✅ body nằm TRONG Scaffold
      body: ResponsiveLayout(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _balanceCard(context, wallet),
              const SizedBox(height: 24),
              _quickActions(context),
            ],
          ),
        ),
      ),
    );
  }

  // ======================
  // HERO BALANCE CARD
  // ======================
  Widget _balanceCard(BuildContext context, WalletProvider wallet) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Total Balance',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              '${wallet.balance.toStringAsFixed(4)} ETH',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Sepolia Testnet',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const Divider(height: 32),
            Row(
              children: [
                Expanded(
                  child: SelectableText(
                    wallet.address?.hex ?? '',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.copy, size: 18),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Address copied'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ======================
  // QUICK ACTIONS
  // ======================
  Widget _quickActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _actionButton(
          context,
          icon: Icons.send,
          label: 'Send',
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.send);
          },
        ),
        _actionButton(
          context,
          icon: Icons.history,
          label: 'History',
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.history);
          },
        ),
        _actionButton(
          context,
          icon: Icons.settings,
          label: 'Settings',
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.settings);
          },
        ),
      ],
    );
  }

  Widget _actionButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Icon(icon, size: 28),
                const SizedBox(height: 8),
                Text(
                  label,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
