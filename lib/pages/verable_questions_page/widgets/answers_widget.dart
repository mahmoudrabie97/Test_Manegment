import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    super.key,
    required this.selecthandler,
    required this.answers,
    required this.containercolor,
  });
  final Function selecthandler;
  final String answers;
  final Color containercolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selecthandler();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: 45,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: containercolor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            answers,
            style: TextStyle(
              color:
                  containercolor == Colors.green ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
