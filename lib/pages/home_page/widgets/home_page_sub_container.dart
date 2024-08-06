import 'package:flutter/material.dart';

class CustomHomePageSubContainer extends StatelessWidget {
  const CustomHomePageSubContainer(
      {super.key, required this.color, required this.customWidget});

  final Color color;
  final Widget customWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .92,
        height: MediaQuery.of(context).size.height * .11,
        child: customWidget,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
      ),
    );
  }
}
