import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_custom_drop_down_skill.dart';
import 'package:test_mangement/pages/solo_quize/widgets/solo_quize_sub_container.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';

class CustomSoloQuizeMainContainer extends StatelessWidget {
  const CustomSoloQuizeMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .93,
      height: MediaQuery.of(context).size.height * .86,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SoloQuizeRowWords(),
              const SoloQuizeSlider(),
              const SoloQuizeCustomDropdownButtonSkill(),
              const SizedBox(
                height: 16,
              ),
              SoloQuizeSubContainer(
                levelText: S.of(context).midLevel,
                testText: S.of(context).quantitiveQuize,
                mainColor: AppColor.primary,
                mainTest: S.of(context).engineerSkillTest,
                subColor: AppColor.lightBlue,
              ),
              const SizedBox(
                height: 8,
              ),
              SoloQuizeSubContainer(
                levelText: S.of(context).difficultLevel,
                testText: S.of(context).differentTest,
                mainColor: AppColor.braon,
                mainTest: S.of(context).reohSillTest,
                subColor: AppColor.lightBraon,
              ),
              const SizedBox(
                height: 8,
              ),
              SoloQuizeSubContainer(
                levelText: S.of(context).easyLevel,
                testText: S.of(context).verabalQuize,
                mainColor: AppColor.greenColor,
                mainTest: S.of(context).engineerSkillTest,
                subColor: AppColor.lightGreenColor,
              ),
              const SizedBox(
                height: 8,
              ),
              SoloQuizeSubContainer(
                levelText: S.of(context).midLevel,
                testText: S.of(context).quantitiveQuize,
                mainColor: AppColor.primary,
                mainTest: S.of(context).algebraSkillLevel,
                subColor: AppColor.lightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SoloQuizeSlider extends StatefulWidget {
  const SoloQuizeSlider({super.key});

  @override
  State<SoloQuizeSlider> createState() => _SoloQuizeSliderState();
}

class _SoloQuizeSliderState extends State<SoloQuizeSlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 18),
      child: Slider(
        activeColor: AppColor.orange,
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }
}

class SoloQuizeRowWords extends StatelessWidget {
  const SoloQuizeRowWords({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextarabic(
          text: S.of(context).difficult,
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: AppColor.primary,
        ),
        Spacer(),
        CustomTextarabic(
          text: S.of(context).easy,
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: AppColor.primary,
        ),
      ],
    );
  }
}
