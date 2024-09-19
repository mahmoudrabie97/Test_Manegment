import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_cubit.dart';
import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_state.dart';
import 'package:test_mangement/cubit/one_to_one_cubit/one_to_one_cubit.dart';
import 'package:test_mangement/cubit/one_to_one_cubit/one_to_one_states.dart';
import 'package:test_mangement/models/one_to_one_quize_model.dart';

import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container_question.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container_time.dart';
import 'package:test_mangement/pages/training_quiz/custom_trainning_subcontainer_timer.dart';
import 'package:test_mangement/pages/training_quiz/traininng_quiz_container_questions.dart';

import '../../../utilites/appcolors.dart';
import 'custom_one_to_one_container_questions.dart';
import 'custom_one_to_one_subcontainer_timer.dart';

class CustomOneToOneQuizeeMainContainer extends StatefulWidget {
  const CustomOneToOneQuizeeMainContainer({super.key});

  @override
  State<CustomOneToOneQuizeeMainContainer> createState() =>
      _CustomTrainningQuizeMainContainerState();
}

class _CustomTrainningQuizeMainContainerState
    extends State<CustomOneToOneQuizeeMainContainer> {
  @override
  void initState() {
    OneToOneQuizeCubit.get(context).getoneToOneQuize(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OneToOneQuizeCubit, OneToOneQuizeStates>(
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
                          itemCount: OneToOneQuizeCubit.get(context).oneToOneQuizeModel?.totalCount,
                          itemBuilder: (context, index) {
                            return ListViewIetm(
                              oneToOneQuizeModel:
                                  OneToOneQuizeCubit.get(context).oneToOneQuizeModel,
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
    this.oneToOneQuizeModel,
    required this.index,
  });
  final OneToOneQuizeModel? oneToOneQuizeModel;
  final int index;
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomOneToOneSubcontainerTimer(
          oneToOneQuizeModel: oneToOneQuizeModel,
          index: index,
        ),
        CustomOneToOneContainerQuestions(
          oneToOneQuizeModel: oneToOneQuizeModel,
          index: index,
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
