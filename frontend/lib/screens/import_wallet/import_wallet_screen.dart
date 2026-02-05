import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/wallet_provider.dart';
import '../../providers/user_provider.dart';
import '../../core/routes.dart';

class ImportWalletScreen extends StatefulWidget {
  const ImportWalletScreen({super.key});

  @override
  State<ImportWalletScreen> createState() =>
      _ImportWalletScreenState();
}

class _ImportWalletScreenState extends State<ImportWalletScreen> {
  final TextEditingController _mnemonicController =
      TextEditingController();

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
    final token = context.read<UserProvider>().token;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Import Wallet'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Restore your wallet',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Enter your 12-word recovery phrase to restore '
                      'full access to your wallet.',
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 24),

                    // ===== MNEMONIC INPUT =====
                    TextField(
                      controller: _mnemonicController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: 'Recovery Phrase',
                        hintText: 'word1 word2 word3 ...',
                        errorText: error,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // ===== IMPORT BUTTON =====
                    ElevatedButton(
                      onPressed: loading
                          ? null
                          : () async {
                              setState(() {
                                loading = true;
                                error = null;
                              });

                              final ok =
                                  await wallet.importFromMnemonic(
                                _mnemonicController.text.trim(),
                                token: token,
                              );

                              setState(() {
                                loading = false;
                              });

                              if (ok) {
                                Navigator.pushReplacementNamed(
                                  context,
                                  AppRoutes.home,
                                );
                              } else {
                                setState(() {
                                  error =
                                      'Invalid recovery phrase';
                                });
                              }
                            },
                      child: loading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text('Import Wallet'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
