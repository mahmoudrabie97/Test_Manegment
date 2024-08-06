import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class HomePageCustomTextButton extends StatelessWidget {
  const HomePageCustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: TextButton(
        style: ButtonStyle(
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),

                )
            ),
          backgroundColor:  WidgetStatePropertyAll(AppColor.darkBlue),
        ),
          onPressed: () {},
          child: CustomTextarabic(
            text: S.of(context).exploremore,
            color: AppColor.whiteColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
