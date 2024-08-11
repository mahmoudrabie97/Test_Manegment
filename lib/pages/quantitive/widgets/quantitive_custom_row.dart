


import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/widgets/customtext.dart';

class QuantitiveCustomRow extends StatelessWidget {
  const QuantitiveCustomRow({super.key, required this.image, required this.text, required this.imageContainer});

  final String image;
  final String text;
  final String imageContainer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * .11,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
          child: Row(
            children: [
              Image.asset(image),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextarabic(
                    text: text,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                  CustomTextarabic(
                    text: '34 اختبار',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ],
              ),
              Spacer(),
              Image.asset(imageContainer),
            ],
          ),
        ),
      ),
    );
  }
}