import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';

class CustomeSmallContainerAvailablePlayers extends StatelessWidget {
  const CustomeSmallContainerAvailablePlayers(
      {Key? key, required this.width, required this.height, required this.icon})
      : super(key: key);
  final double width;
  final double height;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Icon(
        icon,
        color: AppColor.whiteColor,
      ),
    );
  }
}
