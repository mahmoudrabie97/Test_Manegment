import 'package:flutter/material.dart';
import 'package:test_mangement/pages/add_friends/add_friends_page.dart';
import 'package:test_mangement/pages/create_group/widgets/create_group_custom_drop_down_category.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/custombutton.dart';
import '../../../utilites/widgets/customtextformfield.dart';

class CreateGroupCustomMainContainer extends StatelessWidget {
  CreateGroupCustomMainContainer({super.key});

  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _questionNumberController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _coinsNumberController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  final FocusNode field1 = FocusNode();

  final FocusNode field2 = FocusNode();
  final FocusNode field3= FocusNode();
  final FocusNode field4 = FocusNode();
  final FocusNode field5 = FocusNode();
  final FocusNode field6 = FocusNode();

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
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25),
        child: Form(
          key: formkey,
          child: Column(

            children: [
              CustomTextarabic(
                text: S.of(context).createGroup,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
              SizedBox(height: 60,),
              CreateGroupCustomDropDownCategory(),

              SizedBox(height: 40,),
              CustomTextFormField(
                hintText: S.of(context).questionsNumber,
                hinnntcolr: AppColor.greyColor,
                controller: _questionNumberController,
                keyboardType: TextInputType.emailAddress,
                focusnode: field2,
                onsubmitted: (value) {
                  FocusScope.of(context).requestFocus(field3);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your identity';
                  }
                  // else if (!isEmailValid(value)) {
                  //   return 'Invalid email format';
                  // }
                  return null;
                },
              ),
              SizedBox(height: 40,),
              CustomTextFormField(
                hintText: S.of(context).time,
                hinnntcolr: AppColor.greyColor,
                controller: _timeController,
                keyboardType: TextInputType.emailAddress,
                focusnode: field3,
                onsubmitted: (value) {
                  FocusScope.of(context).requestFocus(field4);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your identity';
                  }
                  // else if (!isEmailValid(value)) {
                  //   return 'Invalid email format';
                  // }
                  return null;
                },
              ),
              SizedBox(height: 40,),
              CustomTextFormField(
                hintText: S.of(context).coinsNumber,
                hinnntcolr: AppColor.greyColor,
                controller: _coinsNumberController,
                keyboardType: TextInputType.emailAddress,
                focusnode: field4,
                onsubmitted: (value) {
                  FocusScope.of(context).requestFocus(field5);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your identity';
                  }
                  // else if (!isEmailValid(value)) {
                  //   return 'Invalid email format';
                  // }
                  return null;
                },
              ),
              SizedBox(height: 60,),
              CustomButton(
                buttonText: S.of(context).addFriends,
                onPressed: () {
                context.push(AddFriendsPage());
                },
                buttonColor: AppColor.primary,
                borderRadius: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
