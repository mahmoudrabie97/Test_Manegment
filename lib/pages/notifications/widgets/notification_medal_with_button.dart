import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';
import 'notifications_small_container.dart';

class NotificationMedalWithButton extends StatelessWidget {
  const NotificationMedalWithButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Image.asset(
                AssetsData.medal,
                fit: BoxFit.fill,
                width: 55,
                height: 60,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextarabic(
                    text: S.of(context).startRace,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 12,),
                  NotificationsSmallContainerButton(
                    text: S.of(context).start,
                    color: AppColor.primary,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
