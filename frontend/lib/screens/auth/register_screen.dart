import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/user_provider.dart';
import '../../core/routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirm = TextEditingController();

  String? error;
  bool loading = false;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserProvider>();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Secure your Ethereum wallet',
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 32),

                TextField(
                  controller: _email,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),

                const SizedBox(height: 16),

                TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),

                const SizedBox(height: 16),

                TextField(
                  controller: _confirm,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                  ),
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
                            error = null;
                            loading = true;
                          });

                          if (_password.text != _confirm.text) {
                            setState(() {
                              error = 'Passwords do not match';
                              loading = false;
                            });
                            return;
                          }

                          final ok = await user.register(
                            _email.text,
                            _password.text,
                          );

                          setState(() {
                            loading = false;
                          });

                          if (ok) {
                            Navigator.pushReplacementNamed(
                              context,
                              AppRoutes.login,
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
                      : const Text('Create Account'),
                ),

                const SizedBox(height: 16),

                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Already have an account? Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
