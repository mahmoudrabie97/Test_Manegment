import 'package:flutter/material.dart';
import 'package:test_mangement/cubit/exam_question_cubit/exam_question_cubit.dart';
import 'package:test_mangement/pages/oneToOne_quiz/summary_one_to_one/summary_one_to_one.dart';
import 'package:test_mangement/pages/summary/summary_page.dart';

import 'quiz_item.dart';

class CustomQuestionBody extends StatefulWidget {
  const CustomQuestionBody({super.key, required this.isonetoene});
  final bool isonetoene;
  @override
  State<CustomQuestionBody> createState() => _CustomQuestionBodyState();
}

class _CustomQuestionBodyState extends State<CustomQuestionBody> {
  var questionindex = 0;
  int totalscore = 0;
  void questionsUpdate(int score) {
    totalscore = totalscore + score;
    if (questionindex < questionsList.length) {
      setState(() {
        questionindex = questionindex + 1;
      });
    }
  }

  void resultupdate() {
    setState(() {
      questionindex = 0;
      totalscore = 0;
    });
  }

  var questionsList = [
    {
      "questiontext":
          " ما هي المستعمرة البريطانية السابقة التي أعيدت إلى الصين في عام  1997؟",
      "answers": [
        {"text": "Rusia", "score": "1"},
        {"text": "America", "score": "0"},
        {"text": "Australia", "score": "0"},
        {"text": "HongKong", "score": "0"},
      ],
    },
    {
      "questiontext": "ما هي أول لغة برمجة كائنية التوجه تم تطويرها؟",
      "answers": [
        {"text": "C++", "score": "0"},
        {"text": "SmallTalk", "score": "1"},
        {"text": "Dart", "score": "0"},
        {"text": "Kotlin", "score": "0"},
      ],
    },
    {
      "questiontext":
          "ما هي ميزة OOP التي تشير إلى إمكانية إعادة استخدام الكود؟",
      "answers": [
        {"text": "Abstraction", "score": "0"},
        {"text": "Polymorphism", "score": "0"},
        {"text": "Encapsulation", "score": "0"},
        {"text": "Inheritance", "score": "1"},
      ],
    },
    {
      "questiontext":
          "الميزة التي من خلالها يمكن لكائن أن يتفاعل مع كائن آخر هي",
      "answers": [
        {"text": "Message reading", "score": "0"},
        {"text": "Message Passing", "score": "1"},
        {"text": "Data transfer", "score": "0"},
        {"text": "Data Binding", "score": "0"},
      ]
    },
  ];
  @override
  void initState() {
    ExamQuestionCubit.get(context).getExamQuestions(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //SizedBox(height: MediaQuery.of(context).size.height * .1,),

        Quiz(
          queslist: questionsList,
          questionindex: questionindex,
          questionupate: questionsUpdate,
        )
      ],
    );
  }
}
