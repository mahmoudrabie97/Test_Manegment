import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/exam_level_cubit/exam_level_cubit.dart';
import 'package:test_mangement/cubit/exam_level_cubit/exam_level_states.dart';
import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_cubit.dart';
import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_state.dart';
import 'package:test_mangement/models/exmas_level_model.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_custom_drop_down_choose.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_custom_drop_down_skill.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container_question.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container_time.dart';

import '../../../utilites/appcolors.dart';

class CustomSoloQuizeMainContainer extends StatelessWidget {
  const CustomSoloQuizeMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ExamLevelCubit.get(context).examsLevel(
      context: context,
    );

    ExamLevelCubit.get(context).getSkillLookUp(
      context: context,
    );
    return BlocConsumer<ExamLevelCubit, ExamLevelStates>(
      builder: (context, state) {
        return ExamLevelCubit.get(context).shillslevellistForderodown.isEmpty ||
                ExamLevelCubit.get(context).examslevellistodown.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: AppColor.whiteColor,
              ))
            : Container(
                width: MediaQuery.of(context).size.width * .93,
                height: MediaQuery.of(context).size.height * .86,
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
                            Flexible(
                                child: SoloQuizeCustomDropdownButtonLevel()),
                            SizedBox(
                              width: 22,
                            ),
                            Flexible(
                                child: SoloQuizeCustomDropdownButtonSkill()),
                          ],
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return ListViewIetm();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
      },
      listener: (context, state) {},
    );
  }
}

class ListViewIetm extends StatelessWidget {
  const ListViewIetm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ExamSoloCubit.get(context).getExamSolo(context: context);
    return BlocConsumer<ExamSoloCubit, ExamSoloStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return const Column(
          children: [
            SoloQuizeSubContainerTime(),
            SoloQuizeSubContainerQuestion(),
            SizedBox(
              height: 15,
            ),
          ],
        );
      },
    );
  }
}
