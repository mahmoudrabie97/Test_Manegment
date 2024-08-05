import 'package:flutter/material.dart';
import 'package:test_mangement/pages/code_verification_for_phone/widgets/code_verfication_phone_containr.dart';
import 'package:test_mangement/utilites/assets.dart';

class CodeVerificationForRegisterPhoneBody extends StatelessWidget {
  const CodeVerificationForRegisterPhoneBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Image.asset(AssetsData.graduation),
            CodeVerificationPhoneRegisterContainer(),
          ],
        ),
      ),
    );
  }
}
