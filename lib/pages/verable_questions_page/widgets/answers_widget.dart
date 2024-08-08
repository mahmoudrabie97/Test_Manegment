import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';

class AnswerWidget extends StatefulWidget {
  const AnswerWidget({
    super.key,
    required this.selecthandler,
    required this.answers,
  });
  final Function selecthandler;
  final String answers;

  @override
  State<AnswerWidget> createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      margin: EdgeInsets.all(10),
      child: CustomButton(
          buttonColor: AppColor.whiteColor,
          buttonText: widget.answers,
          txtColor: Colors.black,
          onPressed: () {
            widget.selecthandler();
          }),
    );
  }
}
