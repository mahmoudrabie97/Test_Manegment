import 'package:flutter/material.dart';
import 'package:test_mangement/pages/training_quiz/widgets/custom_trainning_quiz_appbar.dart';
import 'package:test_mangement/pages/training_quiz/widgets/custom_trainning_quiz_main_container.dart';

class TrainingQuizPage extends StatelessWidget {
  const TrainingQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomTrainningQuizeAppBar(),
            CustomTrainningQuizeMainContainer(),
          ],
        ),
      ),
    );
  }
}
