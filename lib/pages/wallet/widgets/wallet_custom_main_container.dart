import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_mangement/pages/wallet/widgets/wallet_custom_column_ietm.dart';
import 'package:test_mangement/pages/wallet/widgets/wallet_custom_roe_text_button.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class WalletCustomMainContainer extends StatelessWidget {
  const WalletCustomMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .9,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 12),
        child: Column(
          children: [
            Image.asset(AssetsData.creditCard),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WalletCustomColumnIetm(
                  text: S.of(context).payment,
                  icon: Icons.cloud_upload_outlined,
                ),
                WalletCustomColumnIetm(
                  text: S.of(context).transformation,
                  icon: Icons.transform,
                ),
              ],
            ),
            WalletCustomRowTextButton(),
            Expanded(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return WalletListViewIetm();
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class WalletListViewIetm extends StatelessWidget {
  const WalletListViewIetm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 12),
      child: Container(
        height: MediaQuery.of(context).size.height * .11,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Image.asset(
                width: 55,
                height: 55,
                fit:BoxFit.fill,
                AssetsData.dollar,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextarabic(
                    text: S.of(context).threecoins,
                    color: AppColor.darkGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  CustomTextarabic(
                    text: S.of(context).riyals,
                    color: AppColor.primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ],
              ),
             Spacer(),
              SizedBox(
                width: 110,
                child: TextButton(
                  style: ButtonStyle(

                    backgroundColor: WidgetStatePropertyAll(AppColor.primary),
                  ),
                  onPressed: () {},
                  child: CustomTextarabic(
                    text: S.of(context).recovery,
                    color: AppColor.whiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
