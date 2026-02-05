import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/wallet_provider.dart';
import '../../providers/user_provider.dart';
import '../../core/routes.dart';

class CreateWalletScreen extends StatelessWidget {
  const CreateWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wallet = context.watch<WalletProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Wallet'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: wallet.mnemonic == null
                ? _buildCreate(context)
                : _buildResult(context, wallet),
          ),
        ),
      ),
    );
  }

  // ======================
  // STEP 1: CREATE
  // ======================
  Widget _buildCreate(BuildContext context) {
    final token = context.read<UserProvider>().token;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Create a new wallet',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'This wallet is non-custodial.\nYou are responsible for your recovery phrase.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),

            /// ✅ FIX: truyền token
            ElevatedButton(
              onPressed: () {
                context
                    .read<WalletProvider>()
                    .createWallet(token: token);
              },
              child: const Text('Create New Wallet'),
            ),

            const SizedBox(height: 16),

            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.importWallet,
                );
              },
              child: const Text('Import Existing Wallet'),
            ),
          ],
        ),
      ),
    );
  }

  // ======================
  // STEP 2: MNEMONIC
  // ======================
  Widget _buildResult(BuildContext context, WalletProvider wallet) {
    final words = wallet.mnemonic!.split(' ');

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '⚠️ Backup your recovery phrase',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Write down these 12 words in order and keep them safe.',
            ),
            const SizedBox(height: 20),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: words.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 3,
              ),
              itemBuilder: (_, i) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Text(
                    '${i + 1}. ${words[i]}',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                );
              },
            ),

            const SizedBox(height: 24),

            const Text(
              'Wallet Address',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 6),
            SelectableText(
              wallet.address!.hex,
              style: const TextStyle(fontSize: 13),
            ),

            const SizedBox(height: 32),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.home,
                );
              },
              child: const Text("I've backed up my phrase"),
            ),
          ],
        ),
      ),
    );
  }
}
