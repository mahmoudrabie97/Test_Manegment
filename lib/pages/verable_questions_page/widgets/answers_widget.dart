import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget(
      {super.key, required this.selecthandler, required this.answers});
  final Function selecthandler;
  final String answers;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      margin: EdgeInsets.all(10),
      child: CustomButton(
          buttonColor: Colors.white,
          buttonText: answers,
          txtColor: Colors.black,
          onPressed: () {
            selecthandler();
          }),
    );
  }
}
