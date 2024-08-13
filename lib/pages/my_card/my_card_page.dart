import 'package:flutter/material.dart';
import 'package:test_mangement/pages/my_card/widgets/my_card_custom_appbar.dart';
import 'package:test_mangement/pages/my_card/widgets/my_card_custom_main_container.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';
import 'package:test_mangement/utilites/widgets/customtextformfield.dart';

import '../../generated/l10n.dart';
import '../../utilites/appcolors.dart';
import '../../utilites/widgets/custombutton.dart';

class MyCardPage extends StatelessWidget {
  const MyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
        child: Column(
          children: [
            MyCardCustomAppbar(),
            MyCardCustomMainContainer(),
          ],
        ),
      )),
    );
  }
}


