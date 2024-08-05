import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:test_mangement/utilites/appcolors.dart';

class CustomCodeVerification extends StatelessWidget {
  const CustomCodeVerification({
    super.key,
    required this.defaulttheme,
  });

  final PinTheme defaulttheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Pinput(
        length: 4,
        defaultPinTheme: defaulttheme,
        focusedPinTheme: defaulttheme.copyWith(
          decoration: defaulttheme.decoration!
              .copyWith(border: Border.all(color: AppColor.primary)),
        ),
        onCompleted: (value) {
          print(value);
        },
      ),
    );
  }
}
