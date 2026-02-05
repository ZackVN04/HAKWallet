import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/wallet_provider.dart';

Future<bool> showUnlockWalletDialog(BuildContext context) async {
  return await showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (_) => const UnlockWalletDialog(),
      ) ??
      false;
}

class UnlockWalletDialog extends StatefulWidget {
  const UnlockWalletDialog({super.key});

  @override
  State<UnlockWalletDialog> createState() => _UnlockWalletDialogState();
}

class _UnlockWalletDialogState extends State<UnlockWalletDialog> {
  final _mnemonicController = TextEditingController();
  String? error;
  bool loading = false;

  @override
  void dispose() {
    _mnemonicController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final wallet = context.read<WalletProvider>();

    return AlertDialog(
      title: const Text('Unlock Wallet'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'This wallet was created on HAKWallet.\n\n'
            'Enter your 12-word recovery phrase to unlock signing.\n\n'
            '⚠️ We never store this phrase.',
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _mnemonicController,
            maxLines: 3,
            decoration: InputDecoration(
              labelText: 'Recovery Phrase',
              hintText: 'word1 word2 word3 ...',
              errorText: error,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed:
              loading ? null : () => Navigator.pop(context, false),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: loading
              ? null
              : () async {
                  setState(() {
                    loading = true;
                    error = null;
                  });

                  final ok =
                      await wallet.unlockWalletWithMnemonic(
                    _mnemonicController.text.trim(),
                  );

                  setState(() {
                    loading = false;
                  });

                  if (!ok) {
                    setState(() {
                      error =
                          'Recovery phrase does not match this wallet';
                    });
                    return;
                  }

                  Navigator.pop(context, true);
                },
          child: loading
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : const Text('Unlock'),
        ),
      ],
    );
  }
}
