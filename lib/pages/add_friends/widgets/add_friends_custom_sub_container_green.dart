


import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/customtext.dart';
import 'add_friends_custom_check_box.dart';

class AddFriendsCustomSubContainerGreen extends StatelessWidget {
  const AddFriendsCustomSubContainerGreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .08,
      decoration: BoxDecoration(
        color: AppColor.mediamBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          children: [
            CustomTextarabic(
              text: S.of(context).chooseAll,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            Spacer(),
            AddFriendsCustomCheckBox()
          ],
        ),
      ),
    );
  }
}