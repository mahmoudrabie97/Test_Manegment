import 'package:flutter/material.dart';
import 'package:test_mangement/pages/oneToOne_quiz/widgets/customOneToOneMaincontainer.dart';
import 'package:test_mangement/utilites/widgets/custom_appbar_profile.dart';

class CustomOneToOneBody extends StatelessWidget {
  const CustomOneToOneBody({super.key, required this.examid});
  final int examid;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppbar(
          text: 'اللاعبون المتاحون',
          icon: Icons.arrow_back_ios,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CustomOneToOneMainContainer(
          examid: examid,
        ),
      ],
    );
  }
}
