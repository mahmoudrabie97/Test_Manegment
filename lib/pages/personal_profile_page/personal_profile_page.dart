import 'package:flutter/material.dart';
import 'package:test_mangement/pages/personal_profile_page/widgets/personal_profile_body.dart';

class PersonalProfilePage extends StatelessWidget {
  const PersonalProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PersonalProfileBody(),
    );
  }
}
