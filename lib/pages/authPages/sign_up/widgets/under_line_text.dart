


import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../../utilites/appcolors.dart';

class UnderLineText extends StatelessWidget {
  const UnderLineText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).servicesagree,
      style: const TextStyle(
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
        fontFamily: "Cairo",
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: AppColor.primary,
      ),
    );
  }
}