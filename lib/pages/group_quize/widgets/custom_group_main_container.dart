


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_custom_drop_down_choose.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_custom_drop_down_skill.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container_question.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container_time.dart';

import '../../../utilites/appcolors.dart';
import 'group_quize_custom_drop_down_button_level.dart';
import 'group_quize_custom_drop_down_button_skill.dart';
import 'group_quize_sub_container_question.dart';
import 'group_quize_sub_container_time.dart';

class CustomGroupQuizeMainContainer extends StatelessWidget {
  const CustomGroupQuizeMainContainer({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(child: GroupQuizeCustomDropdownButtonLevel()),
                  SizedBox(
                    width: 22,
                  ),
                  Flexible(child: GroupQuizeCustomDropdownButtonSkill()),
                ],
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return GroupListViewIetm();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GroupListViewIetm extends StatelessWidget {
  const GroupListViewIetm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GroupQuizeSubContainerTime(),
        GroupQuizeSubContainerQuestion(),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
