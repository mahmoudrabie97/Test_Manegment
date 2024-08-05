import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class CustomSubContainer extends StatelessWidget {
  const CustomSubContainer(
      {super.key,
      required this.containerText,
      required this.image,
      required this.color, this.onTap});

  final String containerText;
  final String image;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,bottom: 8),
      child: GestureDetector(
        onTap:onTap ,
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 12,),
              Image.asset( image ),
              SizedBox(height: 6,),
              CustomTextarabic(
                text: containerText,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColor.whiteColor,
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width * .4,
          height: MediaQuery.of(context).size.height * .2,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
