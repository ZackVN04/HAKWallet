import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/wallet_provider.dart';
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

  @override
  Widget build(BuildContext context) {
    final wallet = context.read<WalletProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Import Wallet')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ToggleButtons(
              isSelected: [isMnemonic, !isMnemonic],
              onPressed: (index) {
                setState(() {
                  isMnemonic = index == 0;
                  error = null;
                  _controller.clear();
                });
              },
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Mnemonic'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Private Key'),
                ),
              ],
            ),

            const SizedBox(height: 16),

            TextField(
              controller: _controller,
              maxLines: isMnemonic ? 3 : 1,
              decoration: InputDecoration(
                hintText: isMnemonic
                    ? 'word1 word2 word3 ...'
                    : '0x...',
                errorText: error,
                border: const OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                bool ok = false;
                if (isMnemonic) {
                  ok = await wallet
                      .importFromMnemonic(_controller.text);
                } else {
                  ok = await wallet
                      .importFromPrivateKey(_controller.text);
                }

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
              child: const Text('Import Wallet'),
            ),
          ],
        ),
      ),
    );
  }
}
