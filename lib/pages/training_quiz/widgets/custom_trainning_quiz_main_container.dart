import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_cubit.dart';
import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_state.dart';
import 'package:test_mangement/models/exam_solo_model.dart';



import 'package:test_mangement/pages/training_quiz/custom_trainning_subcontainer_timer.dart';
import 'package:test_mangement/pages/training_quiz/traininng_quiz_container_questions.dart';

import '../../../utilites/appcolors.dart';

class CustomTrainningQuizeMainContainer extends StatefulWidget {
  const CustomTrainningQuizeMainContainer({super.key});

  @override
  State<CustomTrainningQuizeMainContainer> createState() =>
      _CustomTrainningQuizeMainContainerState();
}

class _CustomTrainningQuizeMainContainerState
    extends State<CustomTrainningQuizeMainContainer> {
  @override
  void initState() {
    ExamSoloCubit.get(context).getExamSolo(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExamSoloCubit, ExamSoloStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width * .93,
          height: MediaQuery.of(context).size.height * .87,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ExamSoloCubit.get(context).state is ExamSoloLoadingState
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
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: ExamSoloCubit.get(context)
                              .examsoloModel!
                              .data!
                              .length,
                          itemBuilder: (context, index) {
                            return ListViewIetm(
                              examSoloModel:
                                  ExamSoloCubit.get(context).examsoloModel,
                              index: index,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}

class ListViewIetm extends StatelessWidget {
  const ListViewIetm({
    super.key,
    this.examSoloModel,
    required this.index,
  });
  final ExamSoloModel? examSoloModel;
  final int index;
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TrainningQuizeSubContainerTime(
          examSoloModel: examSoloModel,
          index: index,
        ),
        TrainningQuizeSubContainerQuestion(
          examsoloModel: examSoloModel,
          index: index,
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
