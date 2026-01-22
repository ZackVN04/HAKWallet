import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/wallet_provider.dart';
import '../../core/routes.dart';

class CreateWalletScreen extends StatelessWidget {
  const CreateWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wallet = context.watch<WalletProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Create Wallet')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: wallet.mnemonic == null
            ? _buildCreate(context)
            : _buildResult(context, wallet),
      ),
    );
  }

Widget _buildCreate(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () {
          context.read<WalletProvider>().createWallet();
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
  );
}

  Widget _buildResult(BuildContext context, WalletProvider wallet) {
    final words = wallet.mnemonic!.split(' ');

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '⚠️ Backup your mnemonic phrase',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(
              words.length,
              (i) => Chip(label: Text('${i + 1}. ${words[i]}')),
            ),
          ),

          const SizedBox(height: 24),
          const Text('Wallet Address'),
          const SizedBox(height: 8),

          SelectableText(
            wallet.address!.hex,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 24),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRoutes.verifyMnemonic,
              );
            },
            child: const Text("I've backed up my phrase"),
          ),
        ],
      ),
    );
  }
}
