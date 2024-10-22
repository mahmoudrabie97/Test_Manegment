import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class Customeventdrow extends StatelessWidget {
  const Customeventdrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const CustomTextarabic(
            text: "فعاليات الاحداث",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          const Spacer(),
          Row(
            children: [
              const CustomTextarabic(
                text: "مشاهده الكل ",
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
              const SizedBox(
                width: 3,
              ),
              Image.asset(
                'assets/svg/icon-park-outline_next.png',
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
