import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/styles.dart';
import '../../../utilites/widgets/custombutton.dart';


class CustomShowBottomSheetIetm extends StatelessWidget {
  const CustomShowBottomSheetIetm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 300,
      child: Column(
        children: <Widget>[
          Image.asset(AssetsData.report),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'The Questions are finished ',
            style: Styles.style15,
          ),
          const Text(
            'Wait for result',
            style: Styles.style15,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, right: 90),
            child: CustomButton(
              buttonText: 'Ok',
              onPressed: () {},
              buttonColor: AppColor.primary,
              borderRadius: 22,
            ),
          ),

        ],
      ),
    );
  }
}