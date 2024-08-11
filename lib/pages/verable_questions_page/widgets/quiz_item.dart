import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_mangement/pages/result_page/result_page.dart';
import 'package:test_mangement/pages/verable_questions_page/widgets/answers_widget.dart';
import 'package:test_mangement/pages/verable_questions_page/widgets/custom_main_container_question.dart';
import 'package:test_mangement/pages/verable_questions_page/widgets/questions_widget.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

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
  Timer? _timer;
  int timeRemaining = 7;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        timeRemaining--;
      });

      if (timeRemaining == 0) {
        _timer?.cancel();
        navigateToNextQuestion();
      }
    });
  }

  void navigateToNextQuestion() {
    if (widget.questionindex! < widget.queslist.length - 1) {
      setState(() {
        widget.questionindex = widget.questionindex! + 1;
        timeRemaining = 7;
        startTimer();
      });
    } else {
      showBottomSheet(
          context: context,
          builder: (context) {
            return Container();
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    int c = widget.questionindex! + 1;
    int l = widget.queslist.length;
    int u = l - c;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CustomMainContainerQuestion(height: height),
            Positioned(
              top: 150,
              right: 15,
              left: 15,
              child: Container(
                height: 160,
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 8,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomTextarabic(
                              text: u.toString(),
                              fontWeight: FontWeight.bold,
                            ),
                            Text('  ,  '),
                            SizedBox(
                              width: 5,
                            ),
                            CustomTextarabic(
                              text: l.toString(),
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 8,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),

                            //Text("Quiz : $c/$l."),
                          ],
                        ),
                      ),
                    ),
                    QuestionsWidge(
                        questiontext: widget.queslist[widget.questionindex!]
                                ['questiontext']
                            .toString(),
                        questionnumber: widget.questionindex! + 1),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 130,
              right: 20,
              left: 20,
              child: CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColor.primary,
                  child: CustomTextarabic(
                    text: '$timeRemaining',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 120,
        ),
        ...(widget.queslist[widget.questionindex!]['answers']
                as List<Map<String, Object>>)
            .map(
          (answer) {
            return AnswerWidget(
              selecthandler: () {
                widget.questionupate(
                  int.parse(answer['score'].toString()),
                );
                timeRemaining = 7;
              },
              answers: answer['text'].toString(),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  if (widget.questionindex! < widget.queslist.length) {
                    print('hiiiiiii');
                  }

                  if (widget.questionindex! < widget.queslist.length - 1) {
                    setState(() {
                      widget.questionindex = widget.questionindex! + 1;
                      timeRemaining = 7;
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
                child: const CircleAvatar(
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

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
