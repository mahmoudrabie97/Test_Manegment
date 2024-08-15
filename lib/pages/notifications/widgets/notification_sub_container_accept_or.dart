import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';
import 'notifications_small_container.dart';

class NotificationSubContainerAcceptOr extends StatelessWidget {
  const NotificationSubContainerAcceptOr({super.key, required this.image, required this.text});
final String image;
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .93,
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
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(image),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextarabic(
                    text: text,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  CustomTextarabic(
                    text: 'enas@gmail.com',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColor.greyColor,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      NotificationsSmallContainerButton(
                        text: S.of(context).accept,
                        color: AppColor.primary,
                      ),
                      SizedBox(width: 10,),
                      NotificationsSmallContainerButton(
                        text: S.of(context).reject,
                        color: AppColor.red,
                      ),
                    ],
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
