import 'package:flutter/cupertino.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class CustomSmallWhiteContainer extends StatelessWidget {
  const CustomSmallWhiteContainer({super.key, required this.text});
 final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18.0, left: 8),
      child: Container(
        width: MediaQuery.of(context).size.width * .09,
        height: MediaQuery.of(context).size.height * .04,
        child: Center(
          child: Column(
            children: [
              CustomTextarabic(
                text: text,
                color: AppColor.primary,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              Container(
                width: 5,
                height: 1,
                color: AppColor.primary,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
