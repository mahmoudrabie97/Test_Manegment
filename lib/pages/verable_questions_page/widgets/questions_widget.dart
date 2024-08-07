import 'package:flutter/material.dart';

class QuestionsWidge extends StatelessWidget {
  const QuestionsWidge(
      {super.key, required this.questiontext, required this.questionnumber});
  final String questiontext;
  final int questionnumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        "$questionnumber.  '+$questiontext",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
