
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/customtext.dart';

class WalletCustomRowTextButton extends StatelessWidget {
  const WalletCustomRowTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: CustomTextarabic(
            text: S.of(context).showAll,
            color: AppColor.primary,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: CustomTextarabic(
            text: S.of(context).lastTrement,

            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}