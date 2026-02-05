import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web3dart/web3dart.dart';

import '../../providers/wallet_provider.dart';
import '../../providers/user_provider.dart';
import '../wallet/unlock_wallet_dialog.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({super.key});

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  final _toController = TextEditingController();
  final _amountController = TextEditingController();

  String? error;
  bool loading = false;

  @override
  void dispose() {
    _toController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final wallet = context.watch<WalletProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Send ETH')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Available Balance',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${wallet.balance.toStringAsFixed(4)} ETH',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(height: 32),

                    TextField(
                      controller: _toController,
                      decoration: InputDecoration(
                        labelText: 'Recipient Address',
                        errorText: error,
                      ),
                    ),
                    const SizedBox(height: 16),

                    TextField(
                      controller: _amountController,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration:
                          const InputDecoration(labelText: 'Amount (ETH)'),
                    ),
                    const SizedBox(height: 24),

                    ElevatedButton(
                      onPressed: loading
                          ? null
                          : () async {
                              final token =
                                  context.read<UserProvider>().token;
                              if (token == null) {
                                setState(() {
                                  error = 'User not authenticated';
                                });
                                return;
                              }

                              // 🔐 UNLOCK FLOW
                              if (!wallet.canSignTransaction) {
                                final unlocked =
                                    await showUnlockWalletDialog(context);
                                if (!unlocked ||
                                    !wallet.canSignTransaction) {
                                  setState(() {
                                    error = 'Wallet is still locked';
                                  });
                                  return;
                                }
                              }

                              // Validate address
                              EthereumAddress to;
                              try {
                                to = EthereumAddress.fromHex(
                                  _toController.text.trim(),
                                );
                              } catch (_) {
                                setState(() {
                                  error = 'Invalid Ethereum address';
                                });
                                return;
                              }

                              final amount =
                                  double.tryParse(_amountController.text);
                              if (amount == null || amount <= 0) {
                                setState(() {
                                  error = 'Invalid amount';
                                });
                                return;
                              }

                              if (amount > wallet.balance) {
                                setState(() {
                                  error = 'Insufficient balance';
                                });
                                return;
                              }

                              setState(() {
                                loading = true;
                                error = null;
                              });

                              final ok =
                                  await wallet.sendEthViaBackend(
                                toAddress: to.hex,
                                amount: amount,
                                token: token,
                              );

                              setState(() {
                                loading = false;
                              });

                              if (ok) {
                                Navigator.pop(context);
                              } else {
                                setState(() {
                                  error = 'Failed to send transaction';
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
                          : const Text('Send Transaction'),
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
