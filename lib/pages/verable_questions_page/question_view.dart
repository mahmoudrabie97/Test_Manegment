import 'package:flutter/material.dart';
import 'package:test_mangement/pages/verable_questions_page/widgets/custom_question_body.dart';

import 'package:test_mangement/utilites/appcolors.dart';

class QuestionView extends StatelessWidget {
  const QuestionView(
      {super.key,
      required this.isone,
      required this.examid,
      required this.examtype});
  final bool isone;
  final int examid;
  final int examtype;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGreyColor,
      body: SafeArea(
          child: CustomQuestionBody(
        isonetoene: isone,
        examId: examid,
        examtype: examtype,
      )),
    );
  }
}
