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
  Widget build(BuildContext context) {
    final wallet = context.watch<WalletProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Send ETH')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _toController,
              decoration: InputDecoration(
                labelText: 'To Address',
                errorText: error,
                border: const OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              controller: _amountController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Amount (ETH)',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 24),

            loading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        error = null;
                        loading = true;
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
                          error = 'Invalid input or balance';
                        });
                      }
                    },
                    child: const Text('Send'),
                  ),
          ],
        ),
      ),
    );
  }
}
