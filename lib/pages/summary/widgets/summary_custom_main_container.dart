


import 'package:flutter/cupertino.dart';
import 'package:test_mangement/pages/summary/widgets/summary_custom_tabs_bar.dart';

import '../../../utilites/appcolors.dart';

class SummaryCustomMainContainer extends StatelessWidget {
  const SummaryCustomMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:double.infinity,
      height: MediaQuery.of(context).size.height * .52,
      decoration: const BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.only(topLeft:
          Radius.circular(20),topRight: Radius.circular(20),
        ),
      ),
      child: ListView(
        children: [
          SummaryCustomTabsBar(),
        ],
      ),

    );
  }
}
