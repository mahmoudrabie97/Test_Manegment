import 'package:flutter/material.dart';
import 'package:test_mangement/pages/authPages/sign_up/widgets/sign_up_main_container.dart';

import '../../../utilites/assets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: Image.asset(AssetsData.graduation),
            ),
             SignUpMainContainer(),
          ]),
        ),
      ),
    );

  }
}
