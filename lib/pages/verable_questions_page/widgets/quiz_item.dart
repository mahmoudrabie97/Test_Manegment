import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/question_submit_answer/question_submit_answer_cubit.dart';
import 'package:test_mangement/cubit/question_submit_answer/question_submit_answer_states.dart';
import 'package:test_mangement/models/exam_question_model.dart';
import 'package:test_mangement/pages/result_page/result_page.dart';
import 'package:test_mangement/pages/summary/summary_page.dart';
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
  final List<Data>? queslist;
  int? questionindex;
  final Function questionupate;

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Timer? _timer;
  int timeRemaining = 10;
  Color containercolor = Colors.white;

  @override
  void initState() {
    super.initState();
    startTimer();
    _selectedAnswerIndices = List.generate(
      widget.queslist!.length,
      (_) => null,
    );
  }

  void startTimer() {
    _timer?.cancel(); //
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

  List<int?> _selectedAnswerIndices = [];
  void navigateToNextQuestion() {
    if (widget.questionindex! < widget.queslist!.length - 1) {
      setState(() {
        widget.questionindex = widget.questionindex! + 1;
        timeRemaining = 10;
        startTimer();
      });
    } else {
      context.push(SummaryPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    int c = widget.questionindex! + 1;
    int l = widget.queslist!.length;
    int u = l - c;
    var height = MediaQuery.of(context).size.height;
    return BlocConsumer<SubmitAnswerCubit, ExamSubmitAnswerStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CustomMainContainerQuestion(height: height),
                Positioned(
                  top: 160,
                  right: 15,
                  left: 15,
                  child: Container(
                    height: widget.queslist![widget.questionindex!]
                                    .imageOrVideoFile !=
                                null ||
                            widget.queslist![widget.questionindex!]
                                    .imageOrVideoFile !=
                                ''
                        ? 240
                        : 120,
                    decoration: const BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: QuestionsWidge(
                              questiontext: widget
                                      .queslist![widget.questionindex!].title ??
                                  '',
                              questionnumber: widget.questionindex! + 1,
                              imageorvideofile: widget
                                  .queslist![widget.questionindex!]
                                  .imageOrVideoFile,
                              questiontype: widget
                                      .queslist![widget.questionindex!]
                                      .questionType ??
                                  0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  right: 50,
                  left: 30,
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
              height: 200,
            ),
            ...(widget.queslist![widget.questionindex!].answers
                    as List<Answers>)
                .asMap()
                .entries
                .map(
              (entry) {
                final index = entry.key;
                final answer = entry.value;
                return AnswerWidget(
                  containercolor:
                      _selectedAnswerIndices[widget.questionindex!] == index
                          ? Colors.green
                          : containercolor,
                  selecthandler: () {
                    setState(() {
                      Map answedata = {
                        "studentExamQuestionId":
                            widget.queslist![widget.questionindex!].questionId,
                        "answerId": answer.id
                      };
                      _selectedAnswerIndices[widget.questionindex!] = index;

                      SubmitAnswerCubit.get(context)
                          .submitAnswer(context: context, answerdad: answedata)
                          .then((val) {
                        print(
                            'NNNNNNNNNNNN${widget.queslist![widget.questionindex!].imageOrVideoFile}');
                        // _timer!.cancel();
                        // navigateToNextQuestion();
                      });
                      //  print('answerrrrrrrr${answer.id}');
                      // print(
                      //   'questttion${widget.queslist![widget.questionindex!].questionId}');
                    });

                    //  timeRemaining = 10;
                  },
                  answers: answer.name.toString(),
                );
              },
            ).toList(),
            //Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      if (widget.questionindex! < widget.queslist!.length) {
                        navigateToNextQuestion();
                      }

                      if (widget.questionindex! < widget.queslist!.length - 1) {
                        setState(() {
                          // widget.questionindex = widget.questionindex! + 1;
                          timeRemaining = 10;
                          // startTimer();
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

                          timeRemaining = 10;
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
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
