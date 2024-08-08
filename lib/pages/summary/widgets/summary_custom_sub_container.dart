


import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/assets.dart';


import '../../../utilites/appcolors.dart';
import '../../../utilites/styles.dart';


class SummaryCustomSubContainer extends StatelessWidget {
  const SummaryCustomSubContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: MediaQuery.of(context).size.width*.93,
      height: MediaQuery.of(context).size.height*.3,
      decoration: const BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ListView(
        children: [
          Positioned(
            left: 15,
            right: 15,
            top: 00,
              //bottom: 300,

              child: SizedBox(
                  child: Image.asset(AssetsData.trophy)),),

          //const CustomRowText(),


        ],
      ),
    );
  }
}

