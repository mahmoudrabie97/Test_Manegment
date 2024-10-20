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
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColor.whiteColor,
            ),
          ),
          Image.asset(AssetsData.notificationNum),
          SoloCustomContainerAppbar(),


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
        color: Color(0xffFF9B57),
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: Row(
          children: [
            Text(
              '6067',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Image.asset(AssetsData.dollar),
          ],
        ),
      ),
    );
  }
}
