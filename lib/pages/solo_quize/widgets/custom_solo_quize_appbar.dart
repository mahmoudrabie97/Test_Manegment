import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class CustomsoloQuizeAppBar extends StatelessWidget {
  const CustomsoloQuizeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.whiteColor,
            ),
          ),
          const Spacer(),
          CustomTextarabic(
            text: S.of(context).chanllageYourSelf,
            color: AppColor.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          const Spacer(),
          Image.asset(AssetsData.notificationNum),
          const SizedBox(width: 4,),
          const SoloCustomContainerAppbar(),
        ],
      ),
    );
  }
}

class SoloCustomContainerAppbar extends StatelessWidget {
  const SoloCustomContainerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        color: AppColor.orange,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),

            offset: Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: Row(
          children: [
            const Text(
              '6067',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            Image.asset(AssetsData.dollar),
          ],
        ),
      ),
    );
  }
}
