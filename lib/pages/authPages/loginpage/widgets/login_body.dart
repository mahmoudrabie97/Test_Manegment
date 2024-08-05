import 'package:flutter/material.dart';

import 'package:test_mangement/pages/authPages/loginpage/widgets/custom_container_login.dart';

import '../../../../utilites/assets.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(AssetsData.login, width: 200),
            CustomContainerLogin(),
          ],
        ),
      ],
    );
  }
}
