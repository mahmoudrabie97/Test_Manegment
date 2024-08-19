import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/authcubit/authcubit.dart';
import 'package:test_mangement/cubit/authcubit/authstates.dart';
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
    required this.field3,
    required this.field4,
    required this.field5,
  })  : _fullNameController = fullNameController,
        _emailController = emailController,
        _phoneController = phoneController,
        _passwordController = passwordController,
        _identityController = ensurePasswordController;

  final GlobalKey<FormState> formkey;
  final TextEditingController _fullNameController;
  final FocusNode field1;
  final FocusNode field2;
  final FocusNode field3;
  final FocusNode field4;
  final FocusNode field5;

  final TextEditingController _emailController;
  final TextEditingController _phoneController;
  final TextEditingController _passwordController;
  final TextEditingController _identityController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
                    keyboardType: TextInputType.text,
                    focusnode: field1,
                    onsubmitted: (value) {
                      FocusScope.of(context).requestFocus(field2);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your full Name';
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
                    focusnode: field2,
                    onsubmitted: (value) {
                      FocusScope.of(context).requestFocus(field3);
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
                    keyboardType: TextInputType.phone,
                    focusnode: field3,
                    onsubmitted: (value) {
                      FocusScope.of(context).requestFocus(field4);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your PhoneNumber';
                      }
                      return null;
                    },
                  ),
                  CustomDropdownButton(),
                  CustomTextFormField(
                    hintText: "رقم الهويه",
                    perfixicon: Icons.lock_outline,
                    hinnntcolr: Colors.grey,
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    focusnode: field4,
                    onsubmitted: (value) {
                      FocusScope.of(context).requestFocus(field5);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your password';
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    hintText: S.of(context).Password,
                    perfixicon: Icons.lock_outline,
                    hinnntcolr: Colors.grey,
                    controller: _identityController,
                    keyboardType: TextInputType.text,
                    focusnode: field5,
                    onsubmitted: (value) {
                      // FocusScope.of(context).requestFocus(field6);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please re-enter Your password ';
                      }
                      return null;
                    },
                  ),
                  UnderLineText(),
                  SizedBox(
                    height: 10,
                  ),
                  AuthCubit.get(context).state is RegisterLoadingState
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : CustomButton(
                          buttonText: S.of(context).register,
                          onPressed: () {
                            Map userdata = {
                              "name": _fullNameController.text,
                              "nationalId": _identityController.text,
                              "email": _emailController.text,
                              "password": _passwordController.text,
                              "phoneNumber": _phoneController.text,
                              "gender": AuthCubit.get(context).dropdownValue ==
                                      AuthCubit.get(context).list.first
                                  ? 1
                                  : 2,
                              "roleId": 1
                            };
                            if (formkey.currentState!.validate()) {
                              AuthCubit.get(context).registerUser(
                                  userdata: userdata, context: context);
                            }
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
      },
    );
  }
}
