


import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/customtext.dart';

class MyCardCustomAppbar extends StatelessWidget {
  const MyCardCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextarabic(
          text: S.of(context).myCard,
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: AppColor.whiteColor,
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_forward_ios,
            color: AppColor.whiteColor,
          ),
        ),
      ],
    );
  }
}