import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/authcubit/authcubit.dart';
import 'package:test_mangement/cubit/authcubit/authstates.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/authPages/loginpage/widgets/animated_text_widget.dart';
import 'package:test_mangement/pages/authPages/sign_up/sign_up_screen.dart';
import 'package:test_mangement/root_page.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/custommethods.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';
import 'package:test_mangement/utilites/widgets/customtextformfield.dart';

class CustomContainerLogin extends StatefulWidget {
  const CustomContainerLogin({super.key});

  @override
  State<CustomContainerLogin> createState() => _CustomContainerLoginState();
}

class _CustomContainerLoginState extends State<CustomContainerLogin> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  final FocusNode field1 = FocusNode();

  final FocusNode field2 = FocusNode();
  bool? checkval = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.height * .60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20),
            child: ListView(
              children: [
                const AnimatedTextWidget(),
                CustomTextarabic(text: S.of(context).Logintoaccount),
                const SizedBox(
                  height: 10,
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90,
                        child: CustomTextFormField(
                          hintText: S.of(context).Identity,
                          perfixicon: Icons.perm_identity_rounded,
                          hinnntcolr: Colors.grey,
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          focusnode: field1,
                          onsubmitted: (value) {
                            FocusScope.of(context).requestFocus(field2);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your identity';
                            }
                            // else if (!isEmailValid(value)) {
                            //   return 'Invalid email format';
                            // }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        height: 90,
                        child: CustomTextFormField(
                          suffixicon: AuthCubit.get(context).sufficxicp,
                          suffixpressed: () {
                            AuthCubit.get(context).changeSecurePassword();
                          },
                          hintText: S.of(context).Password,
                          perfixicon: Icons.badge,

                          obscureText: AuthCubit.get(context).isSecurep,

                          hinnntcolr: Colors.grey,
                          // suffixicon: AuthCubit.get(context).sufficxicp,
                          //   suffixpressed: () {
                          // AuthCubit.get(context).changeSecurePassword();
                          //  },
                          controller: _passwordController,
                          // obscureText: AuthCubit.get(context).isSecurep,
                          keyboardType: TextInputType.visiblePassword,
                          focusnode: field2,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your password';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      // state is LoginLoadingState
                      //     ? const Center(
                      //         child: CircularProgressIndicator(),
                      //       )
                      //     :

                      AuthCubit.get(context).state is LoginLoadingState
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: CustomButton(
                                buttonText: S.of(context).Login,
                                onPressed: () async {
                                  Map logindata = {
                                    "nationalId": _emailController.text,
                                    "password": _passwordController.text,
                                  };
                                  String? tokenNotification =
                                      await FirebaseMessaging.instance
                                          .getToken();
                                  Map tokendata = {
                                    "deviceToken": tokenNotification
                                  };
                                  if (formkey.currentState!.validate()) {
                                    AuthCubit.get(context).loginUser(
                                        userdata: logindata,
                                        context: context,
                                        notificationdata: tokendata);

                                    // Map userdata = {
                                    //   "email": _emailController.text,
                                    //   "password": _passwordController.text,
                                    // };
                                  }

                                  // if (formkey.currentState!.validate()) {}
                                },
                                buttonColor: AppColor.primary,
                                borderRadius: 12,
                              ),
                            ),
                      CheckboxListTile(
                        activeColor: AppColor.primary,
                        title: CustomTextarabic(
                          text: S.of(context).Rememberme,
                          color: Colors.grey,
                        ),
                        value: AuthCubit.get(context).isChecked,
                        onChanged: (value) {
                          AuthCubit.get(context).checkBox(value);
                          print('rembe${AuthCubit.get(context).isChecked}');

                          print(value);
                        },

                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),

                      const SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: CustomTextarabic(
                          text: S.of(context).Forgetpassword,
                          fontSize: 18,
                          color: AppColor.primary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextarabic(
                            text: S.of(context).Donothaveacountregister,
                            color: Colors.grey,
                          ),
                          GestureDetector(
                            onTap: () {
                              context.push(SignUpScreen());
                            },
                            child: CustomTextarabic(
                              text: S.of(context).register,
                              fontSize: 16,
                              color: AppColor.primary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      listener: (BuildContext context, AuthStates state) {
        if (state is LoginLoadingState) {
          CircularProgressIndicator();
        }
      },
    );
  }
}
