import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/styles.dart';

class CustomMainAppbar extends StatelessWidget {
  const CustomMainAppbar({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.whiteColor,
          ),
        ),
        const SizedBox(
          width: 88,
        ),
        Text(
          text,
          style: Styles.style28,
        ),
      ],
    );
  }
}
