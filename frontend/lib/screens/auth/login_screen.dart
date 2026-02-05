import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/user_provider.dart';
import '../../core/routes.dart';
import '../../widgets/responsive_layout.dart';
import '../../services/api_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  String? error;
  bool loading = false;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserProvider>();

    return Scaffold(
      body: ResponsiveLayout(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'HAKWallet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Non-custodial Ethereum wallet',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),

                  TextField(
                    controller: _email,
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                  const SizedBox(height: 16),

                  TextField(
                    controller: _password,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                  const SizedBox(height: 24),

                  if (error != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        error!,
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ElevatedButton(
                    onPressed: loading
                        ? null
                        : () async {
                            setState(() {
                              loading = true;
                              error = null;
                            });

                            final ok = await user.login(
                              _email.text,
                              _password.text,
                            );

                            if (!mounted) return;

                            setState(() {
                              loading = false;
                            });

                            if (!ok) {
                              setState(() {
                                error = 'Invalid credentials';
                              });
                              return;
                            }

                            // 🔑 Token đã được set trong UserProvider
                            final token = user.token;
                            if (token == null) {
                              setState(() {
                                error = 'Authentication error';
                              });
                              return;
                            }

                            // 🔎 CHECK USER WALLETS
                            final wallets =
                                await ApiService.getUserWallets(token);

                            if (!mounted) return;

                            if (wallets.isNotEmpty) {
                              // ✅ Có ví → vào HOME
                              Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.home,
                              );
                            } else {
                              // ❌ Chưa có ví → CREATE WALLET
                              Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.createWallet,
                              );
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
                        : const Text('Login'),
                  ),

                  const SizedBox(height: 16),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.register,
                      );
                    },
                    child: const Text('Create new account'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
