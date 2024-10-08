import 'package:flutter/material.dart';
import 'package:test_mangement/pages/oneToOne_quiz/widgets/customonetoonequizcontainer.dart';

import 'package:test_mangement/pages/solo_quize/widgets/custom_solo_quize_appbar.dart';
import 'package:test_mangement/pages/solo_quize/widgets/custom_solo_quize_main_container.dart';

class OneToOneExamchoosingPage extends StatelessWidget {
  const OneToOneExamchoosingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomsoloQuizeAppBar(),
            CustomOneToOneQuizeMainContainer(),
          ],
        ),
      ),
    );
  }
}
