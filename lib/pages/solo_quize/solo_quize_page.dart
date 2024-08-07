


import 'package:flutter/material.dart';
import 'package:test_mangement/pages/solo_quize/widgets/custom_solo_quize_appbar.dart';
import 'package:test_mangement/pages/solo_quize/widgets/custom_solo_quize_main_container.dart';

class SoloQuizePage extends StatelessWidget {
  const SoloQuizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body : SafeArea(
          child: Column(
           children: [
             CustomSoloQuizeAppBar(),
             CustomSoloQuizeMainContainer(),
           ],
                 ),
        ),
    );
  }
}

