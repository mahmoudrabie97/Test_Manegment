import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_mangement/pages/result_page/result_page.dart';
import 'package:test_mangement/pages/verable_questions_page/widgets/answers_widget.dart';
import 'package:test_mangement/pages/verable_questions_page/widgets/questions_widget.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';

class Quiz extends StatefulWidget {
  Quiz({
    super.key,
    required this.queslist,
    this.questionindex,
    required this.questionupate,
  });
  final List<Map<String, Object>> queslist;
  int? questionindex;
  final Function questionupate;

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    int c = widget.questionindex! + 1;
    int l = widget.queslist.length;
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
                  questiontext: widget.queslist[widget.questionindex!]
                          ['questiontext']
                      .toString(),
                  questionnumber: widget.questionindex! + 1),
            ],
          ),
        ),
        ...(widget.queslist[widget.questionindex!]['answers']
                as List<Map<String, Object>>)
            .map(
          (answer) {
            return AnswerWidget(
                selecthandler: () =>
                    widget.questionupate(int.parse(answer['score'].toString())),
                answers: answer['text'].toString());
          },
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  if (widget.questionindex! < widget.queslist.length - 1) {
                    setState(() {
                      widget.questionindex = widget.questionindex! + 1;
                    });
                  }
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(c.toString()),
              ),
              InkWell(
                onTap: () {
                  if (widget.questionindex! > 0) {
                    setState(() {
                      widget.questionindex = widget.questionindex! - 1;
                    });
                  } else {}
                },
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
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
