import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomWhiteSmallContainerPersonal extends StatelessWidget {
  const CustomWhiteSmallContainerPersonal({
    super.key,
    required this.icondata,
    required this.text,
  });
  final String icondata;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  icondata,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextarabic(
                  text: text,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
            const Spacer(),
            Container(
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(2.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 17,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
