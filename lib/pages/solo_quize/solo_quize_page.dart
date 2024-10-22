import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/solo_quize_cubit/solo_quize_cubit.dart';
import 'package:test_mangement/cubit/solo_quize_cubit/solo_quize_states.dart';

import 'package:test_mangement/pages/solo_quize/widgets/custom_solo_quize_appbar.dart';
import 'package:test_mangement/pages/solo_quize/widgets/custom_solo_quize_main_container.dart';

import '../../generated/l10n.dart';
import '../../utilites/appcolors.dart';
import '../../utilites/assets.dart';
import '../../utilites/widgets/customtext.dart';

class SoloQuizePage extends StatelessWidget {
  SoloQuizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SoloQuizeCubit, SoloQuizeStates>(
      builder: (BuildContext context, SoloQuizeStates state) {
        return Scaffold(
          body: SafeArea(
            child: ListView(
              children: [
                const CustomsoloQuizeAppBar(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SoloQuizeChooseContainer(
                      color: AppColor.greenColor,
                      image: AssetsData.sport,
                      text: S.of(context).verabalQuize,
                      onTap: () {
                        SoloQuizeCubit.get(context)
                            .changeContainer(currentIndex: 0);
                      },
                    ),
                    SoloQuizeChooseContainer(
                      color: AppColor.pink,
                      image: AssetsData.manyQuestions,
                      text: S.of(context).quantitiveQuize,
                      onTap: () {
                        SoloQuizeCubit.get(context)
                            .changeContainer(currentIndex: 1);
                      },
                    ),
                    SoloQuizeChooseContainer(
                      color: AppColor.braon,
                      image: AssetsData.choose,
                      text: S.of(context).differentTest,
                      onTap: () {
                        SoloQuizeCubit.get(context)
                            .changeContainer(currentIndex: 2);
                      },
                    ),
                  ],
                ),
                SoloQuizeCubit.get(context).currentInde == 0
                    ? const CustomSoloQuizeMainContainer()
                    : SoloQuizeCubit.get(context).currentInde == 1
                        ? Text("lamiaaa")
                        : Text("hhhhhhhhhh"),
              ],
            ),
          ),
        );
      },
      listener: (BuildContext context, SoloQuizeStates state) {},
    );
  }
}

class SoloQuizeChooseContainer extends StatelessWidget {
  const SoloQuizeChooseContainer({
    super.key,
    required this.color,
    required this.image,
    required this.text,
    this.onTap,
  });

  final Color color;
  final String image;
  final String text;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(7),
            topRight: Radius.circular(7),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 4.0, top: 3),
          child: Row(
            children: [
              Image.asset(image),
              SizedBox(
                width: 8,
              ),
              CustomTextarabic(
                text: text,
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: AppColor.whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
