import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/quantitive/widgets/quantitive_custom_row.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class QuantitiveSkillsIetm extends StatelessWidget {
  const QuantitiveSkillsIetm({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomQuantitiveSkillsRow();
  }
}

class CustomQuantitiveSkillsRow extends StatelessWidget {
  const CustomQuantitiveSkillsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuantitiveCustomRow(
          image: AssetsData.choose,
          text: S.of(context).totalTestsSkills,
          imageContainer: AssetsData.frameWrong,
        ),
        CustomTextarabic(
          text: S.of(context).total10Tries,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: AppColor.darkGrey,
        ),
        Expanded(
          child: ListView.separated(
            // physics: ScrollPhysics(),
            // shrinkWrap: true,
            itemCount: 32,
            itemBuilder: (context, index) {
              return IetmListView();
            },
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                color: AppColor.greyColor,
                width: double.infinity,
                height: 1,
              );
            },
          ),
        ),
      ],
    );
  }
}

class IetmListView extends StatelessWidget {
  const IetmListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextarabic(
            text: S.of(context).firstStep,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
          SkillsCustomIetmColumn(
            image: AssetsData.question,
            text: S.of(context).total,
          ),
          Container(
            width: 1,
            height: 30,
            color: AppColor.greyColor,
          ),
          SkillsCustomIetmColumn(
              image: AssetsData.accept, text: S.of(context).doneCorrect),
          Container(
            width: 1,
            height: 30,
            color: AppColor.greyColor,
          ),
          SkillsCustomIetmColumn(
              image: AssetsData.cansel1, text: S.of(context).Wrong),
        ],
      ),
    );
  }
}

class SkillsCustomIetmColumn extends StatelessWidget {
  const SkillsCustomIetmColumn(
      {super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(image),
            SizedBox(
              width: 5,
            ),
            Text(
              '08',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ],
        ),
        CustomTextarabic(
          text: text,
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ],
    );
  }
}
