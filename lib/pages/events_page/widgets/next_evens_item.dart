import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class NextEventsItems extends StatelessWidget {
  const NextEventsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomEventNextRow();
  }
}

class CustomEventNextRow extends StatelessWidget {
  const CustomEventNextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Image.asset(AssetsData.sport),
          const SizedBox(
            width: 25,
          ),
          Column(
            children: [
              CustomTextarabic(
                text: S.of(context).event1,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(AssetsData.callender),
              SizedBox(
                height: 10,
              ),
              const CustomTextarabic(
                text: '12/3/2024',
                fontSize: 17,
              )
            ],
          )
        ],
      ),
    );
  }
}
