import 'package:flutter/material.dart';
import 'package:test_mangement/pages/result_page/result_page.dart';
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
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        CustomMainContainerQuestion(height: height),
        //SizedBox(height: MediaQuery.of(context).size.height * .1,),
        SizedBox(
          child: (questionindex < questionsList.length)
              ? Quiz(
                  queslist: questionsList,
                  questionindex: questionindex,
                  questionupate: questionsUpdate,
                )
              : ResultPage(score: totalscore, res: resultupdate),
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
      ],
    );
  }
}
// return ListView(
//       children: [
//         Stack(
//           clipBehavior: Clip.none,
//           children: [
//             CustomMainContainerQuestion(height: height),
//             //SizedBox(height: MediaQuery.of(context).size.height * .1,),
//             Positioned(
//               left: 15,
//               right: 15,
//               top: 120,
//               child: SizedBox(
//                 child: Quiz(
//                   queslist: questionsList,
//                   questionindex: questionindex,
//                   questionupate: questionsUpdate,
//                 ),
//               ),
//             ),
//           ],
//         ),

//         // CustomStackAnswer(
//         //   textWord: 'Russia',
//         //   textLetter: 'A',
//         // ),
//         // CustomStackAnswer(
//         //   textWord: 'America',
//         //   textLetter: 'B',
//         // ),
//         // CustomStackAnswer(
//         //   textWord: 'Australia',
//         //   textLetter: 'C',
//         // ),
//         // CustomStackAnswer(
//         //   textWord: 'Hong Kong',
//         //   textLetter: 'D',
//         // ),
//         // Padding(
//         //   padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
//         //   child: CustomButton(
//         //     buttonText: 'Next',
//         //     onPressed: () {
//         //       showModalBottomSheet<void>(
//         //         context: context,
//         //         builder: (BuildContext context) {
//         //           return const CustomShowBottomSheetIetm();
//         //         },
//         //       );
//         //     },
//         //     buttonColor: AppColor.primary,
//         //     borderRadius: 22,
//         //   ),

//         // ),
//       ],
//     );