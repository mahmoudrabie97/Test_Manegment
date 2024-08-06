import 'package:flutter/cupertino.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class CustomRowInfo extends StatelessWidget {
  const CustomRowInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              CustomTextarabic(
                text: S.of(context).welcomeback,
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: AppColor.whiteColor,
              ),
              Text(
                'ايناس عمر ',style: TextStyle
               ( fontSize: 26,
                fontWeight: FontWeight.w700,
                color: AppColor.whiteColor,)
              ),
            ],
          ),
          Spacer(),
          Image.asset(AssetsData.person),
        ],
      ),
    );
  }
}
