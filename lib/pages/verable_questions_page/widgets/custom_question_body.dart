import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';

import 'custom_main_container_question.dart';
import 'custom_write_container_qeustion.dart';

class CustomQuestionBody extends StatefulWidget {
  const CustomQuestionBody({super.key});

  @override
  State<CustomQuestionBody> createState() => _CustomQuestionBodyState();
}

class _CustomQuestionBodyState extends State<CustomQuestionBody> {
  var questionindex = 0;
  int totalscore = 0;
  void questionsUpdate(int score) {
    totalscore += totalscore;
    if (questionindex < questionsList.length) {
      setState(() {
        questionindex = questionindex + 1;
      });
    }
  }

  var questionsList = [
    {
      "questiontext":
          "Which Former Britishcolony was Given Back to China in 1997?",
      "answers": [
        {"text": "Rusia", "score": "1"},
        {"text": "America", "score": "0"},
        {"text": "Australia", "score": "0"},
        {"text": "HongKong", "score": "0"},
      ],
    },
    {
      "questiontext":
          "Which was the first purely object oriented programming language developed?",
      "answers": [
        {"text": "C++", "score": "0"},
        {"text": "SmallTalk", "score": "1"},
        {"text": "Dart", "score": "0"},
        {"text": "Kotlin", "score": "0"},
      ],
    },
    {
      "questiontext": "Which feature of OOP indicates code reusability?",
      "answers": [
        {"text": "Abstraction", "score": "0"},
        {"text": "Polymorphism", "score": "0"},
        {"text": "Encapsulation", "score": "0"},
        {"text": "Inheritance", "score": "1"},
      ],
    },
    {
      "questiontext":
          "The feature by which one object can interact with another object is",
      "answers": [
        {"text": "Message reading", "score": "0"},
        {"text": "Message Passing", "score": "1"},
        {"text": "Data transfer", "score": "0"},
        {"text": "Data Binding", "score": "0"},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        CustomButton(
            buttonText: 'buttonText',
            onPressed: () {
              print('hi');
            }),
        Stack(
          clipBehavior: Clip.none,
          children: [
            CustomMainContainerQuestion(height: height),
            //SizedBox(height: MediaQuery.of(context).size.height * .1,),
            Positioned(
              left: 15,
              right: 15,
              top: 120,
              child: SizedBox(
                child: Quiz(
                  queslist: questionsList,
                  questionindex: questionindex,
                  questionupate: questionsUpdate,
                ),
              ),
            ),
          ],
        ),

        // CustomStackAnswer(
        //   textWord: 'Russia',
        //   textLetter: 'A',
        // ),
        // CustomStackAnswer(
        //   textWord: 'America',
        //   textLetter: 'B',
        // ),
        // CustomStackAnswer(
        //   textWord: 'Australia',
        //   textLetter: 'C',
        // ),
        // CustomStackAnswer(
        //   textWord: 'Hong Kong',
        //   textLetter: 'D',
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        //   child: CustomButton(
        //     buttonText: 'Next',
        //     onPressed: () {
        //       showModalBottomSheet<void>(
        //         context: context,
        //         builder: (BuildContext context) {
        //           return const CustomShowBottomSheetIetm();
        //         },
        //       );
        //     },
        //     buttonColor: AppColor.primary,
        //     borderRadius: 22,
        //   ),

        // ),
        ElevatedButton(
            onPressed: () {
              print('press');
            },
            child: Text('rrrrrr')),
      ],
    );
  }
}
