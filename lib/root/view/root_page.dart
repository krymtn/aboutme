import 'package:aboutme/base_screen.dart';
import 'package:flutter/material.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        builder: (context, constraints) {
          return const Text('Koray Metin');
        });
  }
}
