import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class NotificationsCustomAppbar extends StatelessWidget {
  const NotificationsCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0, right: 90.0, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomTextarabic(
            text: S.of(context).notifications, //change
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: AppColor.whiteColor,
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColor.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}