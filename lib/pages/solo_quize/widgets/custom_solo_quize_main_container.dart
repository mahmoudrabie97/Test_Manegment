import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_custom_drop_down_choose.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_custom_drop_down_skill.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container_question.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container_time.dart';

import '../../../utilites/appcolors.dart';

class CustomSoloQuizeMainContainer extends StatelessWidget {
  const CustomSoloQuizeMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .93,
      height: MediaQuery.of(context).size.height * .87,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(

            children: [
              Row(
                children: [
                  Flexible(child: SoloQuizeCustomDropdownButtonLevel()),
                  SizedBox(width: 22,),
                  Flexible(child: SoloQuizeCustomDropdownButtonSkill()),
                ],
              ),
              ListView.builder(
            physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context,index){
                  return ListViewIetm();
                },
          
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewIetm extends StatelessWidget {
  const ListViewIetm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SoloQuizeSubContainerTime(),

        SoloQuizeSubContainerQuestion(),
        SizedBox(height: 15,),
      ],
    );
  }
}
