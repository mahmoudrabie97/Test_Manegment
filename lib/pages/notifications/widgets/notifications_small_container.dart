import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class NotificationsSmallContainerButton extends StatelessWidget {
  const NotificationsSmallContainerButton(
      {super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: CustomTextarabic(
          text: text,
          fontWeight: FontWeight.w700,
          fontSize: 12,
          color: AppColor.whiteColor,
        ),
      ),
    );
  }
}
