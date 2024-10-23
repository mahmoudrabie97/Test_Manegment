import 'package:flutter/material.dart';
import 'package:test_mangement/pages/forget_password/widgets/reset_password_main_container.dart';

import '../../utilites/appcolors.dart';
import '../../utilites/assets.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.whiteColor,
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      AssetsData.trophy,
                      fit: BoxFit.fill,
                      width: 205,
                      height: 200,
                    ),
                  ),
                  ResetPasswordMainContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
