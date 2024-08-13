


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/pages/wallet/widgets/wallet_custom_appbar.dart';
import 'package:test_mangement/pages/wallet/widgets/wallet_custom_main_container.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              WalletCustomAppbar(),
              WalletCustomMainContainer(),
            ],
          ),
        ),
      ),
    ),

    );
  }
}
