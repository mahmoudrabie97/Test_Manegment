


import 'package:flutter/material.dart';
import 'package:test_mangement/pages/group_quize/widgets/custom_group_main_container.dart';
import 'package:test_mangement/pages/group_quize/widgets/custom_group_quize_appbar.dart';

import 'package:test_mangement/pages/solo_quize/widgets/custom_solo_quize_appbar.dart';
import 'package:test_mangement/pages/solo_quize/widgets/custom_solo_quize_main_container.dart';

class GroupQuizePage extends StatelessWidget {
  const GroupQuizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomGroupQuizeAppBar(),
            CustomGroupQuizeMainContainer(),
          ],
        ),
      ),
    );
  }
}
