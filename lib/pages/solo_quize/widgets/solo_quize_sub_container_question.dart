import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/models/exam_solo_model.dart';
import 'package:test_mangement/pages/verable_questions_page/question_view.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../cubit/user_blance_cubit/exam_user_has_blance_cubit.dart';
import '../../../cubit/user_blance_cubit/exam_user_has_blance_state.dart';
import '../../../generated/l10n.dart';

class SoloQuizeSubContainerQuestion extends StatelessWidget {
  const SoloQuizeSubContainerQuestion({
    super.key,
    required this.examsoloModel,
    required this.index,
  });

  final ExamSoloModel? examsoloModel;
  final int index;

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<ExamUserHasBlanceCubit, ExamUserHasBalanceStates>(
      builder: (BuildContext context, state) {
        return Container(
          width: MediaQuery.of(context).size.width * .93,
          height: MediaQuery.of(context).size.height * .1,
          decoration: const BoxDecoration(
            color: AppColor.lightBlue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 2),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColor.primary, //channnnnnnnnnnge
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                        onPressed: (){
                          ExamUserHasBlanceCubit.get(context).getExamUserHasBlance(
                              context: context, id: examsoloModel!.data?[index].examId ?? 1);

                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColor.whiteColor,
                        )),
                  ),
                ),
                Spacer(),
                CustomTextarabic(
                  text:
                      examsoloModel!.data![index].examTimeInMinutes.toString(),
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
                SizedBox(
                  width: 10,
                ),
                CustomTextarabic(
                  text: S.of(context).questions,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(AssetsData.accept),
              ],
            ),
          ),
        );
      },
      listener: (BuildContext context, state) {},
    );
  }
}
