import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CurrentEventsItem extends StatelessWidget {
  const CurrentEventsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomEventCurrentRow();
  }
}

class CustomEventCurrentRow extends StatelessWidget {
  const CustomEventCurrentRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Image.asset(AssetsData.sport1),
          SizedBox(
            width: 25,
          ),
          Column(
            children: [
              CustomTextarabic(
                text: S.of(context).questions,
                fontWeight: FontWeight.bold,
              ),
              CustomTextarabic(
                text: S.of(context).ques34,
                color: Colors.grey,
              ),
              CustomTextarabic(
                text: S.of(context).player5,
                color: Colors.grey,
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColor.primary,
            ),
            child: const Padding(
              padding: EdgeInsets.all(2.0),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
