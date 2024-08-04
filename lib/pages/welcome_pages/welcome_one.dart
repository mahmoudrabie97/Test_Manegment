import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).welcome),
      ),
    );
  }
}
