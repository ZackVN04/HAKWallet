import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HAKWallet',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('HAKWallet')),
        body: const Center(
          child: Text('Frontend setup OK 🚀'),
        ),
      ),
    );
  }
}
