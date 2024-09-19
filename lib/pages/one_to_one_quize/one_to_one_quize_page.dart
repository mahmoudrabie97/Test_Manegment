import 'package:flutter/material.dart';
import 'package:test_mangement/pages/one_to_one_quize/widgets/custom_one_to_one_quiz_appbar.dart';
import 'package:test_mangement/pages/one_to_one_quize/widgets/custom_one_to_one_quiz_main_container.dart';
import 'package:test_mangement/pages/training_quiz/widgets/custom_trainning_quiz_appbar.dart';
import 'package:test_mangement/pages/training_quiz/widgets/custom_trainning_quiz_main_container.dart';

class OneToOneQuizePage extends StatelessWidget {
  const OneToOneQuizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomOneToOneQuizeAppBar(),
            CustomOneToOneQuizeeMainContainer(),
          ],
        ),
      ),
    );
  }
}
