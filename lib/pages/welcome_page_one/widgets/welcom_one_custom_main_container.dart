import 'package:flutter/material.dart';
import 'package:test_mangement/pages/welcome_page_two/welcome_page_two.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../authPages/loginpage/login_page.dart';
import 'custom_sub_container.dart';

class WelcomOneCustomMainContainer extends StatelessWidget {
  const WelcomOneCustomMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColor.whiteColor,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 14,
              ),
              CustomTextarabic(
                text: S.of(context).Login,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
              CustomTextarabic(
                text: S.of(context).chooserole,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, top: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomSubContainer(
                          onTap: () {
                            context.push(WelcometwoView());
                          },
                          containerText: S.of(context).Student, //ضيف الاسم الصح
                          color: AppColor.primary,
                          image: AssetsData.student,
                        ),
                        CustomSubContainer(
                          containerText:
                              S.of(context).gurdation, //ضيف الاسم الصح
                          color: AppColor.lightGreenColor,
                          image: AssetsData.parent,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomSubContainer(
                          containerText: S.of(context).Teached, //ضيف الاسم الصح
                          color: AppColor.pinkLight,
                          image: AssetsData.teacher,
                        ),
                        CustomSubContainer(
                          containerText: S.of(context).School, //ضيف الاسم الصح
                          color: AppColor.braon,
                          image: AssetsData.young,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
