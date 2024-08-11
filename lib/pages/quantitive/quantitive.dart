


import 'package:flutter/material.dart';
import 'package:test_mangement/pages/quantitive/widgets/quantitive_custom_appbar.dart';
import 'package:test_mangement/pages/quantitive/widgets/quantitive_custom_tabs.dart';
import 'package:test_mangement/utilites/appcolors.dart';

class QuantitivePage extends StatelessWidget {
  const QuantitivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.whiteColor,
      body:   Column(
        children: [
          QuantitiveCustomAppbar(),
          QuantitiveCustomTabs(),
        ],
      )
    );
  }
}
