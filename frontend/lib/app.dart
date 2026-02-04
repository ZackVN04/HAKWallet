import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/routes.dart';
import 'core/theme.dart';
import 'providers/theme_provider.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>();

return MaterialApp(
  debugShowCheckedModeBanner: false,

  theme: AppTheme.lightTheme,
  darkTheme: AppTheme.darkTheme,
  themeMode: theme.mode,

  // ⭐ FIX QUAN TRỌNG
  themeAnimationDuration: Duration.zero,
  themeAnimationCurve: Curves.linear,

  initialRoute: AppRoutes.login,
  routes: AppRoutes.routes,
);

  }
}


