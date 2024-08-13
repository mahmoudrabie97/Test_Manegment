import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container_question.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container_time.dart';

import '../../../utilites/appcolors.dart';

class CustomTrainningQuizeMainContainer extends StatelessWidget {
  const CustomTrainningQuizeMainContainer({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return const ListViewIetm();
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
    return const Column(
      children: [
        SoloQuizeSubContainerTime(),
        SoloQuizeSubContainerQuestion(),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
