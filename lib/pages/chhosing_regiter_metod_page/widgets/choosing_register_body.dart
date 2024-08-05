import 'package:flutter/material.dart';
import 'package:test_mangement/pages/chhosing_regiter_metod_page/widgets/choosing_register_method_container.dart';
import 'package:test_mangement/utilites/assets.dart';

class ChoosingRegisterBody extends StatelessWidget {
  const ChoosingRegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Image.asset(AssetsData.graduation),
            ChoosingRegisterContainer(),
          ],
        ),
      ),
    );
  }
}
