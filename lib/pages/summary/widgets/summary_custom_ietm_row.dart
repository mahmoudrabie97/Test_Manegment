import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class SummaryCustomIetmRow extends StatelessWidget {
  const SummaryCustomIetmRow(
      {super.key,
      required this.image,
      required this.textAbove,
      required this.textDown});

  final String image;
  final String textAbove;
  final String textDown;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              image,
              width: 30,
              height: 30,
            ),
            Row(
              children: [
                Image.asset(
                  AssetsData.accept,
                ),
                SizedBox(width: 3,),
                CustomTextarabic(
                  text: textAbove,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),

              ],
            ),
            SizedBox(
              height: 3,
            ),
            CustomTextarabic(
              text: textDown,
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
