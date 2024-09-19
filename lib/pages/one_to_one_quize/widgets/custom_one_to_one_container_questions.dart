import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_mangement/pages/oneToOne_quiz/available_players/widgets/available_players_view.dart';
import 'package:test_mangement/pages/verable_questions_page/question_view.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../cubit/user_blance_cubit/exam_user_has_blance_cubit.dart';
import '../../../cubit/user_blance_cubit/exam_user_has_blance_state.dart';
import '../../../generated/l10n.dart';
import '../../../models/one_to_one_quize_model.dart';
import '../../oneToOne_quiz/one_to_one_page.dart';

class CustomOneToOneContainerQuestions extends StatelessWidget {
  const CustomOneToOneContainerQuestions({
    super.key,
    required this.oneToOneQuizeModel,
    required this.index,
  });

  final OneToOneQuizeModel? oneToOneQuizeModel;
  final int index;

  @override
  Widget build(BuildContext context) {
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
                    onPressed: () {
                      context.push(
                        OneToOnePage(
                          // isone: false,
                          // examid: examsoloModel!.data![index].examId ?? 1,
                          // examtype: 2,
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColor.whiteColor,
                    )),
              ),
            ),
            Spacer(),
            CustomTextarabic(
              text:  S.of(context).time,
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppColor.darkGrey,
            ),
            SizedBox(
              width: 20,
            ),
            CustomTextarabic(
              text: '30:00د',
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(AssetsData.deadline),
          ],
        ),
      ),
    );
  }
}
