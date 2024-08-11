import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_mangement/pages/personal_profile_page/widgets/custom_appbar_row.dart';
import 'package:test_mangement/pages/personal_profile_page/widgets/custom_large_personal_continer.dart';

class PersonalProfileBody extends StatelessWidget {
  const PersonalProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            CustomAppbarRow(),
            SizedBox(
              height: 20,
            ),
            CustomLargePersonalContainer(),
          ],
        ),
      ),
    );
  }
}
