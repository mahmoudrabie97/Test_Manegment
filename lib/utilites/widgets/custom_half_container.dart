import 'package:flutter/material.dart';

class CustomHalfContainerBody extends StatelessWidget {
  const CustomHalfContainerBody(
      {Key? key,
      required this.childRow,
      required this.color,
      required this.borderRadius})
      : super(key: key);
  final Widget childRow;
  final Color color;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * .1,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
      child: childRow,
    );
  }
}
