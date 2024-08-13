import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/widgets/customtext.dart';

class WalletCustomAppbar extends StatelessWidget {
  const WalletCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        CustomTextarabic(
          text: S.of(context).myWallet,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColor.whiteColor,
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_forward_ios,
            color: AppColor.whiteColor,
          ),
        ),
      ],
    );
  }
}
