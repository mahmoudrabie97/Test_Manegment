import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/exam_question_cubit/exam_question_cubit.dart';
import 'package:test_mangement/cubit/exam_question_cubit/exam_question_state.dart';

import 'quiz_item.dart';

class CustomQuestionBody extends StatefulWidget {
  const CustomQuestionBody(
      {super.key,
      required this.isonetoene,
      required this.examId,
      required this.examtype});
  final bool isonetoene;
  final int examId;
  final int examtype;
  @override
  State<CustomQuestionBody> createState() => _CustomQuestionBodyState();
}

class _CustomQuestionBodyState extends State<CustomQuestionBody> {
  var questionindex = 0;

  void questionsUpdate(List questionlist) {
    if (questionindex < questionlist.length) {
      setState(() {
        questionindex = questionindex + 1;
      });
    }
  }

  void resultupdate() {
    setState(() {
      questionindex = 0;
    });
  }

  // var questionsList = [
  //   {
  //     "questiontext":
  //         " ما هي المستعمرة البريطانية السابقة التي أعيدت إلى الصين في عام  1997؟",
  //     "answers": [
  //       {"text": "Rusia", "score": "1"},
  //       {"text": "America", "score": "0"},
  //       {"text": "Australia", "score": "0"},
  //       {"text": "HongKong", "score": "0"},
  //     ],
  //   },
  //   {
  //     "questiontext": "ما هي أول لغة برمجة كائنية التوجه تم تطويرها؟",
  //     "answers": [
  //       {"text": "C++", "score": "0"},
  //       {"text": "SmallTalk", "score": "1"},
  //       {"text": "Dart", "score": "0"},
  //       {"text": "Kotlin", "score": "0"},
  //     ],
  //   },
  //   {
  //     "questiontext":
  //         "ما هي ميزة OOP التي تشير إلى إمكانية إعادة استخدام الكود؟",
  //     "answers": [
  //       {"text": "Abstraction", "score": "0"},
  //       {"text": "Polymorphism", "score": "0"},
  //       {"text": "Encapsulation", "score": "0"},
  //       {"text": "Inheritance", "score": "1"},
  //     ],
  //   },
  //   {
  //     "questiontext":
  //         "الميزة التي من خلالها يمكن لكائن أن يتفاعل مع كائن آخر هي",
  //     "answers": [
  //       {"text": "Message reading", "score": "0"},
  //       {"text": "Message Passing", "score": "1"},
  //       {"text": "Data transfer", "score": "0"},
  //       {"text": "Data Binding", "score": "0"},
  //     ]
  //   },
  // ];
  @override
  void initState() {
    Map examData = {"examId": widget.examId, "examType": widget.examtype};
    ExamQuestionCubit.get(context)
        .startExam(examData: examData, context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExamQuestionCubit, ExamQuestionStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ExamQuestionCubit.get(context).state is ExamQuestionLoadingState
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  Quiz(
                    queslist:
                        ExamQuestionCubit.get(context).examQuestionModel!.data,
                    questionindex: questionindex,
                    questionupate: questionsUpdate,
                  )
                ],
              );
      },
    );
  }
}
