


import 'package:flutter/material.dart';
import 'package:test_mangement/pages/summary/widgets/summary_custom_appbar.dart';
import 'package:test_mangement/pages/summary/widgets/summary_custom_main_container.dart';
import 'package:test_mangement/pages/summary/widgets/summary_custom_sub_container.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SummaryCustomAppbar(),
            SummaryCustomSubContainer(),
            SizedBox(
              height: 10,
            ),
            SummaryCustomMainContainer()
          ],
        ),
      ),
    );
  }
}
