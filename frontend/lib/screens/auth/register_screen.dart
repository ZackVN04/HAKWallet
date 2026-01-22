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
  Widget build(BuildContext context) {
    final user = context.read<UserProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _email,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: _password,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: _confirm,
              obscureText: true,
              decoration:
                  const InputDecoration(labelText: 'Confirm Password'),
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
                    child: const Text('Create Account'),
                  ),

            if (error != null)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(error!, style: const TextStyle(color: Colors.red)),
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
    );
  }
}
