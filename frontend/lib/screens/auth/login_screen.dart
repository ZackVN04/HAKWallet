import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/user_provider.dart';
import '../../core/routes.dart';

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
  Widget build(BuildContext context) {
    final user = context.read<UserProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
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

            const SizedBox(height: 24),

            loading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        loading = true;
                        error = null;
                      });

                      final ok = await user.login(
                        _email.text,
                        _password.text,
                      );

                      setState(() {
                        loading = false;
                      });

                      if (ok) {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.createWallet,
                        );
                      } else {
                        setState(() {
                          error = 'Invalid credentials';
                        });
                      }
                    },
                    child: const Text('Login'),
                  ),

            if (error != null)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  error!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),

            const SizedBox(height: 16),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.register);
              },
              child: const Text('Create new account'),
            ),
          ],
        ),
      ),
    );
  }
}
