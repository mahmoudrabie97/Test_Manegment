


import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/customtext.dart';

class PaymentCustomAppbar extends StatelessWidget {
  const PaymentCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextarabic(
          text: S.of(context).payementMethod,
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: AppColor.whiteColor,
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            color: AppColor.whiteColor,
          ),
        ),
      ],
    );
  }
}