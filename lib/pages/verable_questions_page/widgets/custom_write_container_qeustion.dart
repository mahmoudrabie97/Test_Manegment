import 'package:flutter/material.dart';
import 'package:test_mangement/pages/verable_questions_page/widgets/answers_widget.dart';
import 'package:test_mangement/pages/verable_questions_page/widgets/questions_widget.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    super.key,
    required this.queslist,
    required this.questionindex,
    required this.questionupate,
  });
  final List<Map<String, Object>> queslist;
  final int questionindex;
  final Function questionupate;

  @override
  Widget build(BuildContext context) {
    int c = questionindex + 1;
    int l = queslist.length;
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Column(
            children: [
              Container(
                //  color: Colors.white,
                child: Text("Quiz : $c/$l."),
              ),
              QuestionsWidge(
                  questiontext:
                      queslist[questionindex]['questiontext'] as String,
                  questionnumber: questionindex + 1),
              AnswerWidget(
                  selecthandler: () {
                    print("hi");
                  },
                  answers: 's'),
              CustomButton(
                  buttonText: 'buttonText',
                  onPressed: () {
                    print('object');
                  })
            ],
          ),
        ),
      ],
    );
    // return Container(
    //   decoration: const BoxDecoration(
    //     color: AppColor.whiteColor,
    //     borderRadius: BorderRadius.all(
    //       Radius.circular(16),
    //     ),
    //   ),
    //   child: Column(
    //     children: [
    //       Text(
    //         'Question 13/20',
    //         style: Styles.style24.copyWith(color: AppColor.primary),
    //       ),
    //       const Text(
    //         'Which Former Britishcolony was ', Which Former Britishcolony was Given Back to China in 1997?
    //         style: Styles.style17,
    //       ),
    //       const Text(
    //         'Given Back to China in 1997? ',
    //         style: Styles.style17,
    //       )
    //     ],
    //   ),
    // );
  }
}
