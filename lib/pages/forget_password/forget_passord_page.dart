import 'package:flutter/material.dart';
import 'package:test_mangement/pages/forget_password/widgets/forget_password_main_container.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';


class ForgetPassordPage extends StatelessWidget {
  const ForgetPassordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              child: Image.asset(AssetsData.scroll),
            ),
            const ForgetPasswordMainContainer(),
          ],
        ),
      ),
    );
  }
}


