import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/user_blance_cubit/exam_user_has_blance_cubit.dart';
import 'package:test_mangement/cubit/user_blance_cubit/exam_user_has_blance_state.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/custommethods.dart';
import 'package:test_mangement/utilites/widgets/custom_small_button_text.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtextformfield.dart';

class CustomMainContainerEditProfle extends StatelessWidget {
  CustomMainContainerEditProfle({Key? key}) : super(key: key);
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _schoolController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();
  final FocusNode field3 = FocusNode();
  final FocusNode field4 = FocusNode();
  final FocusNode field5 = FocusNode();
  final FocusNode field6 = FocusNode();
  final FocusNode field7 = FocusNode();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    ExamUserHasBlanceCubit.get(context).getExamUserHasBlance(context: context);
    return BlocConsumer<ExamUserHasBlanceCubit,ExamUserHasBalanceStates>(


        builder: (BuildContext context,  state) {



          return Container(
            width: double.infinity,
            height: height * .90,
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(AssetsData.person),
                  const CustomSmallButtonText(
                    text: 'تحميل الصوره',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormField(
                      hintText: 'محمود ربيع',
                      perfixicon: Icons.person_2_outlined,
                      hinnntcolr: Colors.grey,
                      controller: _nameController,
                      keyboardType: TextInputType.text,
                      focusnode: field1,
                      onsubmitted: (value) {
                        FocusScope.of(context).requestFocus(field2);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your name';
                        } else if (!isEmailValid(value)) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormField(
                      hintText: 'Enasomar1588@gmail.com',
                      perfixicon: Icons.email_outlined,
                      hinnntcolr: Colors.grey,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      focusnode: field2,
                      onsubmitted: (value) {
                        FocusScope.of(context).requestFocus(field2);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your name';
                        } else if (!isEmailValid(value)) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormField(
                      hintText: 'رقم الهاتف',
                      perfixicon: Icons.phone,
                      hinnntcolr: Colors.grey,
                      controller: _nameController,
                      keyboardType: TextInputType.phone,
                      focusnode: field3,
                      onsubmitted: (value) {
                        FocusScope.of(context).requestFocus(field2);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your name';
                        } else if (!isEmailValid(value)) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormField(
                      hintText: 'ذكر',
                      perfixicon: Icons.person_4,
                      hinnntcolr: Colors.grey,
                      controller: _phoneController,
                      keyboardType: TextInputType.text,
                      focusnode: field4,
                      onsubmitted: (value) {
                        FocusScope.of(context).requestFocus(field2);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your name';
                        } else if (!isEmailValid(value)) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormField(
                      hintText: ' المدرسه',
                      perfixicon: Icons.school_outlined,
                      hinnntcolr: Colors.grey,
                      controller: _genderController,
                      keyboardType: TextInputType.text,
                      focusnode: field5,
                      onsubmitted: (value) {
                        FocusScope.of(context).requestFocus(field2);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your name';
                        } else if (!isEmailValid(value)) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormField(
                      hintText: 'المدينه',
                      perfixicon: Icons.location_on,
                      hinnntcolr: Colors.grey,
                      controller: _cityController,
                      keyboardType: TextInputType.text,
                      focusnode: field6,
                      onsubmitted: (value) {
                        FocusScope.of(context).requestFocus(field2);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your name';
                        } else if (!isEmailValid(value)) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormField(
                      suffixicon: Icons.share,
                      hintText: 'الهويه',
                      perfixicon: Icons.person_pin_outlined,
                      hinnntcolr: Colors.grey,
                      controller: _nameController,
                      keyboardType: TextInputType.text,
                      focusnode: field1,
                      onsubmitted: (value) {
                        FocusScope.of(context).requestFocus(field2);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your name';
                        } else if (!isEmailValid(value)) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CustomButton(
                      buttonText: 'ارسال',
                      onPressed: () {
                        // if (formkey.currentState!.validate()) {}
                      },
                      buttonColor: AppColor.primary,
                      borderRadius: 22,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

    , listener: (BuildContext context, ExamUserHasBalanceStates state) {  },);
  }
}
