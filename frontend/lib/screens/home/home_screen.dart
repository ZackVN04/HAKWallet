import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/wallet_provider.dart';
import '../../providers/user_provider.dart';
import '../../core/routes.dart';
import '../../widgets/responsive_layout.dart';
import '../wallet/unlock_wallet_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    /// 🔑 Load balance ngay khi vào Home
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = context.read<UserProvider>();
      final wallet = context.read<WalletProvider>();

      if (user.token != null) {
        wallet.fetchBalanceFromBackend(user.token!);
      }
    });
  }

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
              final token = context.read<UserProvider>().token;

              if (token == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('User not authenticated'),
                  ),
                );
                return;
              }

              wallet.fetchBalanceFromBackend(token);
            },
          ),
        ],
      ),
      body: ResponsiveLayout(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _balanceCard(wallet),

              /// 🔐 LOCKED BANNER (KHÔNG PHÁ UI)
              if (!wallet.canSignTransaction)
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.orange.shade200,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.lock,
                        color: Colors.orange,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Text(
                          'Wallet is locked. Import private key to send ETH.',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          showUnlockWalletDialog(context);
                        },
                        child: const Text('Unlock'),
                      ),
                    ],
                  ),
                ),

              const SizedBox(height: 24),
              _quickActions(context),
            ],
          ),
        ),
      ),
    );
  }

  // ======================
  // BALANCE CARD (GIỮ NGUYÊN)
  // ======================
  Widget _balanceCard(WalletProvider wallet) {
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
            SelectableText(
              wallet.address?.hex ?? '',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  // ======================
  // QUICK ACTIONS (GIỮ NGUYÊN)
  // ======================
  Widget _quickActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _actionButton(
          context,
          icon: Icons.send,
          label: 'Send',
          onTap: () => Navigator.pushNamed(context, AppRoutes.send),
        ),
        _actionButton(
          context,
          icon: Icons.history,
          label: 'History',
          onTap: () => Navigator.pushNamed(context, AppRoutes.history),
        ),
        _actionButton(
          context,
          icon: Icons.settings,
          label: 'Settings',
          onTap: () => Navigator.pushNamed(context, AppRoutes.settings),
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
