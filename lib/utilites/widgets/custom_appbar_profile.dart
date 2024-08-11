import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../appcolors.dart';
import '../styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {Key? key, required this.text, required this.icon, this.onPressed})
      : super(key: key);

  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: AppColor.whiteColor,
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          CustomTextarabic(
            text: text,
            color: Colors.white,
            // style: Styles.style28,
          ),
        ],
      ),
    );
  }
}
