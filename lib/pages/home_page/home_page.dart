import 'package:flutter/material.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_challange_container.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_column_text.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_home_page_main_container.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_row_info.dart';
import 'package:test_mangement/pages/home_page/widgets/home_page_sub_container.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomRowInfo(),
              CustomHomePageSubContainer(
                color: AppColor.pinkLight,
                customWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
          
                  children: [
                    Spacer(),
                    Image.asset(AssetsData.star),
                    SizedBox(
          
                      height: MediaQuery.of(context).size.height*.05,
                      child: CustomColumnText(
                        textOne: S.of(context).Pointsearned,
                        textTwo: '1234 نقطة',
                      ),
                    ),
                    Spacer(),
                    Image.asset(AssetsData.dollar),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.05,
                      child: CustomColumnText(
                        textOne: S.of(context).Currencybalance,
                        textTwo: '1234',
                      ),
                    ),
                    Spacer(),
                    Image.asset(AssetsData.succes),
                    SizedBox(
          
                      height: MediaQuery.of(context).size.height*.05,
                      child: CustomColumnText(
                        textOne: S.of(context).level,
                        textTwo: S.of(context).four,
                      ),
                    ),
                    Spacer(),
          
                  ],
                ),
              ),
              CustomChallangeContainer(),
              CustomHomePageMainContainer(),
          
            ],
          ),
        ),
      ),
    );
  }
}

