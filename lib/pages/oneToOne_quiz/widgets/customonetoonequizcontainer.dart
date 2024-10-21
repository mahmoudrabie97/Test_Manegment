import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/exam_level_cubit/exam_level_cubit.dart';
import 'package:test_mangement/cubit/exam_level_cubit/exam_level_states.dart';
import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_cubit.dart';
import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_state.dart';
import 'package:test_mangement/models/exam_solo_model.dart';
import 'package:test_mangement/models/exmas_level_model.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/pages/oneToOne_quiz/widgets/onetoonequizsubcontainer.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_custom_drop_down_choose.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_custom_drop_down_skill.dart';

import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container.dart';

import '../../../utilites/appcolors.dart';

class CustomOneToOneQuizeMainContainer extends StatefulWidget {
  const CustomOneToOneQuizeMainContainer({super.key});

  @override
  State<CustomOneToOneQuizeMainContainer> createState() =>
      _CustomOneToOneQuizeMainContainerState();
}

class _CustomOneToOneQuizeMainContainerState
    extends State<CustomOneToOneQuizeMainContainer> {
  @override
  void initState() {
    ExamLevelCubit.get(context).getSkillLookUp(
      context: context,
    );
    ExamSoloCubit.get(context).getExamSolo(context: context);
    ExamLevelCubit.get(context).examsLevel(
      context: context,
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExamLevelCubit, ExamLevelStates>(
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width * .93,
          height: MediaQuery.of(context).size.height * .86,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: BlocConsumer<ExamSoloCubit, ExamSoloStates>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return ExamSoloCubit.get(context).state is ExamSoloLoadingState ||
                      ExamLevelCubit.get(context)
                          .shillslevellistForderodown
                          .isEmpty ||
                      ExamLevelCubit.get(context).examslevellistodown.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 12),
                      child: SingleChildScrollView(
                        physics: const ScrollPhysics(),
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                Flexible(
                                    child:
                                        SoloQuizeCustomDropdownButtonLevel()),
                                SizedBox(
                                  width: 22,
                                ),
                                Flexible(
                                    child:
                                        SoloQuizeCustomDropdownButtonSkill()),
                              ],
                            ),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: ExamSoloCubit.get(context)
                                  .examsoloModel!
                                  .data!
                                  .length,
                              itemBuilder: (context, index) {
                                return ListViewOnetoOneIetm(
                                  examSoloModel:
                                      ExamSoloCubit.get(context).examsoloModel,
                                  index: index,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
            },
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}

class ListViewOnetoOneIetm extends StatelessWidget {
  const ListViewOnetoOneIetm({
    super.key,
    required this.examSoloModel,
    required this.index,
  });

  final ExamSoloModel? examSoloModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    //ExamSoloCubit.get(context).getExamSolo(context: context);
    return BlocConsumer<ExamSoloCubit, ExamSoloStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ExamSoloCubit.get(context).state is ExamSoloLoadingState
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  // SoloQuizeSubContainerTime(
                  //   examSoloModel: examSoloModel,
                  //   index: index,
                  // ),
                  OneToOneQuizeSubContainerQuestion(
                    index: index,
                    examsoloModel: examSoloModel,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              );
      },
    );
  }
}
