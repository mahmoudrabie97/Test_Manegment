import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomSmallContainerchallenge extends StatelessWidget {
  const CustomSmallContainerchallenge({
    super.key,
    required this.tiltle,
    required this.subtitle,
    required this.image,
    required this.containercolor,
  });
  final String tiltle;
  final String subtitle;
  final String image;
  final Color containercolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 98,
        width: 200,
        decoration: BoxDecoration(
            color: containercolor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                fit: BoxFit.contain,
                width: 60,
                height: 50,
              ),
              const SizedBox(
                width: 4,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextarabic(
                          text: tiltle,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        CustomTextarabic(
                          text: subtitle,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
