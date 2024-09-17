import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/pages/friendrequestpage/add_friends_page.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class CustomRowInfo extends StatelessWidget {
  const CustomRowInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              CustomTextarabic(
                text: S.of(context).welcomeback,
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: AppColor.whiteColor,
              ),
              Text('ايناس عمر ',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: AppColor.whiteColor,
                  )),
              Row(
                children: [
                  CustomTextarabic(
                    text: 'طلبات الصداقه',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  IconButton(
                    iconSize: 30,
                    onPressed: () {
                      context.push(Requestfriendpage());
                    },
                    icon: Icon(Icons.person),
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Image.asset(AssetsData.person),
        ],
      ),
    );
  }
}
