import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomSmallPersonalContainer extends StatelessWidget {
  CustomSmallPersonalContainer(
      {super.key,
      required this.containercolor,
      required this.icondata,
      required this.textcontainer,
      this.isfavourite = false});
  final Color containercolor;
  final IconData icondata;
  final String textcontainer;
  bool isfavourite;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      decoration: BoxDecoration(
        color: containercolor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icondata,
            color: isfavourite ? Colors.red : Colors.amber,
          ),
          Expanded(
            child: CustomTextarabic(
              text: textcontainer,
              color: Colors.white,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
