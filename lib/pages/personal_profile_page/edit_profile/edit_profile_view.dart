import 'package:flutter/material.dart';
import 'package:test_mangement/pages/personal_profile_page/edit_profile/widgets/custom_edit_profile.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomEditProfileBody(),
    );
  }
}
