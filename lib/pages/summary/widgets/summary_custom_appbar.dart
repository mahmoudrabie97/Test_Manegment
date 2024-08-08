import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class SummaryCustomAppbar extends StatelessWidget {
  const SummaryCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          CustomTextarabic(
            text: S.of(context).quizeSummary,
            color: AppColor.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: AppColor.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
