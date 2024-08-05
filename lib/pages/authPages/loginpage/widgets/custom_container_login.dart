import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/authPages/loginpage/widgets/animated_text_widget.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/custommethods.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';
import 'package:test_mangement/utilites/widgets/customtextformfield.dart';

class CustomContainerLogin extends StatelessWidget {
  CustomContainerLogin({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const AnimatedTextWidget(),
            CustomTextarabic(text: S.of(context).Logintoaccount),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
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
                          return 'please enter your email';
                        } else if (!isEmailValid(value)) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    height: 70,
                    child: CustomTextFormField(
                      hintText: S.of(context).Password,
                      perfixicon: Icons.badge,
                      suffixicon: Icons.visibility,
                      suffixpressed: () {},
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

                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: CustomButton(
                      buttonText: S.of(context).Login,
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Map userdata = {
                            "email": _emailController.text,
                            "password": _passwordController.text,
                          };
                        }

                        // if (formkey.currentState!.validate()) {}
                      },
                      buttonColor: AppColor.primary,
                      borderRadius: 12,
                    ),
                  ),

                  SizedBox(
                    height: 14,
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
                          // context.push(const SignUpView());
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
  }
}
