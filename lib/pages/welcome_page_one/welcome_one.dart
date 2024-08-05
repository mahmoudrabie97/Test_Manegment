import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: CustomTextarabic(text: S.of(context).welcome),
    ));
  }
}
