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
  final TextEditingController _controller = TextEditingController();

  bool isMnemonic = true;
  String? error;
  bool loading = false;

  @override
  void dispose() {
    _controller.dispose();
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
                      'Import your existing wallet',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'You can restore your wallet using a recovery phrase or private key.',
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 24),

                    // ===== TOGGLE =====
                    ToggleButtons(
                      isSelected: [isMnemonic, !isMnemonic],
                      onPressed: (index) {
                        setState(() {
                          isMnemonic = index == 0;
                          error = null;
                          _controller.clear();
                        });
                      },
                      borderRadius: BorderRadius.circular(12),
                      constraints:
                          const BoxConstraints(minHeight: 44),
                      children: const [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 24),
                          child: Text('Mnemonic'),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 24),
                          child: Text('Private Key'),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // ===== INPUT =====
                    TextField(
                      controller: _controller,
                      maxLines: isMnemonic ? 3 : 1,
                      decoration: InputDecoration(
                        labelText: isMnemonic
                            ? 'Recovery Phrase'
                            : 'Private Key',
                        hintText: isMnemonic
                            ? 'word1 word2 word3 ...'
                            : '0x...',
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

                              bool ok = false;

                              if (isMnemonic) {
                                ok = await wallet.importFromMnemonic(
                                  _controller.text,
                                  token: token,
                                );
                              } else {
                                ok = await wallet.importFromPrivateKey(
                                  _controller.text,
                                  token: token,
                                );
                              }

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
                                  error = 'Invalid input';
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
