import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget child;

  const ResponsiveLayout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Web / Tablet
        if (constraints.maxWidth >= 900) {
          return Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: child,
            ),
          );
        }

        // Mobile
        return child;
      },
    );
  }
}
