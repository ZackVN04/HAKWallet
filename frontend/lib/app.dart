import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/user_provider.dart';
import 'core/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
          user.isLoggedIn ? AppRoutes.createWallet : AppRoutes.login,
      routes: AppRoutes.routes,
    );
  }
}
