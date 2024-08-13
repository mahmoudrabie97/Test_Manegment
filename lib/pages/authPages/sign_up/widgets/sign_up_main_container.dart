import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/pages/authPages/sign_up/widgets/under_line_text.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../../generated/l10n.dart';
import '../../../../utilites/custommethods.dart';
import '../../../../utilites/widgets/custombutton.dart';
import '../../../../utilites/widgets/customtextformfield.dart';
import '../../loginpage/login_page.dart';
import 'custom_drop_down.dart';
import 'custom_ietm_container.dart';

class SignUpMainContainer extends StatelessWidget {
  SignUpMainContainer({super.key});

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _ensurePasswordController =
      TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();

  final FocusNode field3 = FocusNode();
  final FocusNode field4 = FocusNode();

  final FocusNode field5 = FocusNode();
  final FocusNode field6 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .76,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: CustomIetmContainer(
          formkey: formkey,
          fullNameController: _fullNameController,
          field1: field1,
          field2: field2,
          emailController: _emailController,
          phoneController: _phoneController,
          passwordController: _passwordController,
          ensurePasswordController: _ensurePasswordController,
          field3: field3,
          field4: field4,
          field5: field5,
        ),
      ),
    );
  }
}
