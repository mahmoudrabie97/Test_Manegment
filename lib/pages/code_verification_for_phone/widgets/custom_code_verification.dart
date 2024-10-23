import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:test_mangement/cubit/authcubit/authcubit.dart';
import 'package:test_mangement/cubit/authcubit/authstates.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';

class CustomCodeVerification extends StatelessWidget {
  CustomCodeVerification({
    super.key,
    required this.defaulttheme,
  });

  final PinTheme defaulttheme;
  String? valcompleted;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Pinput(
                length: 4,
                defaultPinTheme: defaulttheme,
                focusedPinTheme: defaulttheme.copyWith(
                  decoration: defaulttheme.decoration!
                      .copyWith(border: Border.all(color: AppColor.primary)),
                ),
                onCompleted: (value) {
                  valcompleted = value;
                  print(value);
                },
              ),
            ),

          ],
        );
      },
    );
  }
}
