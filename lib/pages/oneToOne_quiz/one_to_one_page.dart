import 'package:flutter/material.dart';
import 'package:test_mangement/pages/oneToOne_quiz/widgets/custom_one_to_one_body.dart';

class OneToOnePage extends StatelessWidget {
  const OneToOnePage({super.key, required this.examid});
  final int examid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomOneToOneBody(
        examid: examid,
      ),
    );
  }
}
