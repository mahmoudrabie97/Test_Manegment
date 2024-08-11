import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomerBottomSheetContainer extends StatelessWidget {
  const CustomerBottomSheetContainer({
    super.key,
    required this.containercolor,
    required this.text1,
    required this.image,
  });
  final Color containercolor;
  final String text1;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: containercolor, borderRadius: BorderRadius.circular(14)),
        child: Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Center(
                child: CustomTextarabic(
              text: text1,
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(
              width: 60,
            ),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}
