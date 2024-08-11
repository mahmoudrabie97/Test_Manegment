


import 'package:flutter/material.dart';
import 'package:test_mangement/pages/wallet/widgets/wallet_custom_appbar.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: Column(
      children: [
        WalletCustomAppbar(),
      ],
    ),

    );
  }
}
