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

  @override
  Widget build(BuildContext context) {
    final wallet = context.read<WalletProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Verify Mnemonic')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter your 12-word recovery phrase',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: _controller,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'word1 word2 word3 ...',
                errorText: error,
                border: const OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                final isValid =
                    wallet.verifyMnemonic(_controller.text);

                if (isValid) {
                  Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.home,
                  );
                } else {
                  setState(() {
                    error = 'Mnemonic does not match';
                  });
                }
              },
              child: const Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
