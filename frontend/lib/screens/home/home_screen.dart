import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/wallet_provider.dart';
import '../../core/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wallet = context.watch<WalletProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Wallet'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              wallet.refreshBalanceMock();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _walletCard(wallet),
            const SizedBox(height: 24),
            _actionButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _walletCard(WalletProvider wallet) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Wallet Address',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            SelectableText(wallet.address?.hex ?? ''),

            const Divider(height: 24),

            const Text('Network'),
            const SizedBox(height: 4),
            const Text(
              'Sepolia Testnet',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const Divider(height: 24),

            const Text('Balance'),
            const SizedBox(height: 6),
            Text(
              '${wallet.balance.toStringAsFixed(4)} ETH',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _actionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
ElevatedButton.icon(
  onPressed: () {
    Navigator.pushNamed(context, AppRoutes.send);
  },
  icon: const Icon(Icons.send),
  label: const Text('Send'),
),

ElevatedButton.icon(
  onPressed: () {
    Navigator.pushNamed(context, AppRoutes.history);
  },
  icon: const Icon(Icons.history),
  label: const Text('History'),
),
ElevatedButton.icon(
  onPressed: () {
    Navigator.pushNamed(context, AppRoutes.settings);
  },
  icon: const Icon(Icons.settings),
  label: const Text('Settings'),
),
      ],
    );
  }
}
