import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/wallet_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wallet = context.watch<WalletProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ======================
            // NETWORK
            // ======================
            const Text('Network'),
            const SizedBox(height: 4),
            const Text(
              'Sepolia Testnet',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const Divider(height: 32),

            // ======================
            // WALLET ADDRESS
            // ======================
            const Text('Wallet Address'),
            const SizedBox(height: 4),
            SelectableText(
              wallet.address?.hex ?? '',
            ),

            const Divider(height: 32),

            // ======================
            // LOGOUT (RESET WALLET)
            // ======================
            ElevatedButton.icon(
              onPressed: () {
                // Reset wallet state
                wallet.reset();

                // Quay về màn hình gốc (Create / Import)
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
