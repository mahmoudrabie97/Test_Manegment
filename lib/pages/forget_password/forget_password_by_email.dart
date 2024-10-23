import 'package:flutter/material.dart';
import 'package:test_mangement/pages/forget_password/widgets/forget_password_by_emil_main_container.dart';

import '../../utilites/appcolors.dart';
import '../../utilites/assets.dart';

class ForgetPasswordByEmail extends StatelessWidget {
  const ForgetPasswordByEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                child: Image.asset(AssetsData.trophy,width: 205,height: 200,),
              ),
              ForgetPasswordByEmailMainContainer(),

            ],
          ),
        ),
      ),
    );
  }
}
