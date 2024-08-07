import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import 'custom_row_question_appbar.dart';

class CustomMainContainerQuestion extends StatelessWidget {
  const CustomMainContainerQuestion({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        width: double.infinity,
        height: height * .3,
        decoration: const BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(22),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(bottom: 120),
          child: CustomRowQuestionAppbar(),
        ),
      ),
    );
  }
}
