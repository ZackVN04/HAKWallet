import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/wallet_provider.dart';

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
                    // ===== BALANCE =====
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

                    // ===== TO ADDRESS =====
                    TextField(
                      controller: _toController,
                      decoration: InputDecoration(
                        labelText: 'Recipient Address',
                        errorText: error,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // ===== AMOUNT =====
                    TextField(
                      controller: _amountController,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration: const InputDecoration(
                        labelText: 'Amount (ETH)',
                      ),
                    ),

                    const SizedBox(height: 24),

                    // ===== SEND BUTTON =====
                    ElevatedButton(
                      onPressed: loading
                          ? null
                          : () async {
                              setState(() {
                                loading = true;
                                error = null;
                              });

                              final ok = await wallet.sendEth(
                                toAddress: _toController.text,
                                amount: double.tryParse(
                                        _amountController.text) ??
                                    0,
                              );

                              setState(() {
                                loading = false;
                              });

                              if (ok) {
                                Navigator.pop(context);
                              } else {
                                setState(() {
                                  error =
                                      'Invalid address or insufficient balance';
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
