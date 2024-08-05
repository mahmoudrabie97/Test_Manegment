import 'package:flutter/material.dart';
import 'package:test_mangement/pages/authPages/sign_up/widgets/under_line_text.dart';
import 'package:test_mangement/pages/chhosing_regiter_metod_page/choosing_register_method_page.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';

import '../../../../generated/l10n.dart';
import '../../../../utilites/appcolors.dart';
import '../../../../utilites/custommethods.dart';
import '../../../../utilites/widgets/custombutton.dart';
import '../../../../utilites/widgets/customtext.dart';
import '../../../../utilites/widgets/customtextformfield.dart';
import 'custom_drop_down.dart';

class CustomIetmContainer extends StatelessWidget {
  const CustomIetmContainer({
    super.key,
    required this.formkey,
    required TextEditingController fullNameController,
    required this.field1,
    required this.field2,
    required TextEditingController emailController,
    required TextEditingController phoneController,
    required TextEditingController passwordController,
    required TextEditingController ensurePasswordController,
  })  : _fullNameController = fullNameController,
        _emailController = emailController,
        _phoneController = phoneController,
        _passwordController = passwordController,
        _ensurePasswordController = ensurePasswordController;

  final GlobalKey<FormState> formkey;
  final TextEditingController _fullNameController;
  final FocusNode field1;
  final FocusNode field2;
  final TextEditingController _emailController;
  final TextEditingController _phoneController;
  final TextEditingController _passwordController;
  final TextEditingController _ensurePasswordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 11),
      child: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextarabic(
                text: S.of(context).subscription,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              CustomTextarabic(
                text: S.of(context).createnewaccount,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomTextFormField(
                hintText: S.of(context).fullname,
                perfixicon: Icons.perm_identity_rounded,
                hinnntcolr: Colors.grey,
                controller: _fullNameController,
                keyboardType: TextInputType.emailAddress,
                focusnode: field1,
                onsubmitted: (value) {
                  FocusScope.of(context).requestFocus(field2);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  } else if (!isEmailValid(value)) {
                    return 'Invalid email format';
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                hintText: S.of(context).email,
                perfixicon: Icons.email_outlined,
                hinnntcolr: Colors.grey,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                focusnode: field1,
                onsubmitted: (value) {
                  FocusScope.of(context).requestFocus(field2);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  } else if (!isEmailValid(value)) {
                    return 'Invalid email format';
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                hintText: S.of(context).phone,
                perfixicon: Icons.phone,
                hinnntcolr: Colors.grey,
                controller: _phoneController,
                keyboardType: TextInputType.emailAddress,
                focusnode: field1,
                onsubmitted: (value) {
                  FocusScope.of(context).requestFocus(field2);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  } else if (!isEmailValid(value)) {
                    return 'Invalid email format';
                  }
                  return null;
                },
              ),
              CustomDropdownButton(),
              CustomTextFormField(
                hintText: S.of(context).Password,
                perfixicon: Icons.lock_outline,
                hinnntcolr: Colors.grey,
                controller: _passwordController,
                keyboardType: TextInputType.emailAddress,
                focusnode: field1,
                onsubmitted: (value) {
                  FocusScope.of(context).requestFocus(field2);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  } else if (!isEmailValid(value)) {
                    return 'Invalid email format';
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                hintText: S.of(context).ensurepassword,
                perfixicon: Icons.lock_outline,
                hinnntcolr: Colors.grey,
                controller: _ensurePasswordController,
                keyboardType: TextInputType.emailAddress,
                focusnode: field1,
                onsubmitted: (value) {
                  FocusScope.of(context).requestFocus(field2);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  } else if (!isEmailValid(value)) {
                    return 'Invalid email format';
                  }
                  return null;
                },
              ),
              UnderLineText(),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                buttonText: S.of(context).register,
                onPressed: () {
                  context.push(ChoosingRegisterMethodPage());
                },
                txtColor: AppColor.whiteColor,
                buttonColor: AppColor.primary,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextarabic(
                text: S.of(context).donothaveaccountareedylogin,
                color: AppColor.darkGrey,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
