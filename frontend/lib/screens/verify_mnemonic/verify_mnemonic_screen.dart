import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/wallet_provider.dart';
import '../../core/routes.dart';

class VerifyMnemonicScreen extends StatefulWidget {
  const VerifyMnemonicScreen({super.key});

  @override
  State<VerifyMnemonicScreen> createState() =>
      _VerifyMnemonicScreenState();
}

class _VerifyMnemonicScreenState extends State<VerifyMnemonicScreen> {
  final TextEditingController _controller = TextEditingController();
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Recovery Phrase'),
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
                      'Confirm your recovery phrase',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Please re-enter your 12-word phrase to ensure you have backed it up correctly.',
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 24),

                    // ===== INPUT =====
                    TextField(
                      controller: _controller,
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: 'Recovery Phrase',
                        hintText: 'word1 word2 word3 ...',
                        errorText: error,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // ===== VERIFY BUTTON =====
                    ElevatedButton(
                      onPressed: loading
                          ? null
                          : () {
                              setState(() {
                                loading = true;
                                error = null;
                              });

                              final isValid = wallet
                                  .verifyMnemonic(
                                      _controller.text);

                              setState(() {
                                loading = false;
                              });

                              if (isValid) {
                                Navigator
                                    .pushReplacementNamed(
                                  context,
                                  AppRoutes.home,
                                );
                              } else {
                                setState(() {
                                  error =
                                      'Recovery phrase does not match';
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
                          : const Text('Confirm & Continue'),
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
