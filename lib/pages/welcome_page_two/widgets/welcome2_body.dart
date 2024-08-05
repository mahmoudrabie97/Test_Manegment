import 'package:flutter/material.dart';

import '../../../../utilites/assets.dart';
import 'custom_container_onboarding.dart';

class Welcome2Body extends StatelessWidget {
  const Welcome2Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            AssetsData.onBoarding,
            height: MediaQuery.of(context).size.height * .4,
            width: MediaQuery.of(context).size.width * .6,
          ),
          CustomContainerwelcome2(),
        ],
      ),
    );
  }
}
