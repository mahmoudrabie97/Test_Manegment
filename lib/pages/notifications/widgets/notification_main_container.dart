import 'package:flutter/material.dart';
import 'package:test_mangement/pages/notifications/widgets/notifications_small_container.dart';
import 'package:test_mangement/utilites/assets.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/customtextformfield.dart';
import 'notification_medal_with_button.dart';
import 'notification_sub_container_accept_or.dart';
import 'notifications_medal_container.dart';

class NotificationMainContainer extends StatelessWidget {
  NotificationMainContainer({super.key});

  final TextEditingController _playerController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  final FocusNode field1 = FocusNode();

  final FocusNode field2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .93,
      height: MediaQuery.of(context).size.height * .87,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Form(
              key: formkey,
              child: CustomTextFormField(
                hintText: S.of(context).searchAboutPlayer,
                fillColor: AppColor.greyColor,
                suffixicon: Icons.search,
                hinnntcolr: AppColor.greyColor,
                controller: _playerController,
                keyboardType: TextInputType.emailAddress,
                focusnode: field1,
                onsubmitted: (value) {
                  FocusScope.of(context).requestFocus(field2);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your identity';
                  }

                  return null;
                },
              ),
            ),
            NotificationSubContainerAcceptOr(
              image: AssetsData.person,
              text: S.of(context).sendFriendRequest,
            ),
            NotificationSubContainerAcceptOr(
              image: AssetsData.invitation,
              text: S.of(context).sendFriendRequest,
            ),
            NotificationsMedalContainer(),
            NotificationMedalWithButton(),
          ],
        ),
      ),
    );
  }
}
