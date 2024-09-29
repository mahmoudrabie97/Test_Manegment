import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class InvitationPageBody extends StatelessWidget {
  const InvitationPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(width: 120, AssetsData.invitation),
                  ),
                  const CustomTextarabic(
                    text: "قام محمود محمد بدعوتك للاختبار",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                            width: 160,
                            child: CustomButton(
                                buttonText: "قبول", onPressed: () {})),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 160,
                          child: CustomButton(
                            buttonText: "رفض",
                            onPressed: () {},
                            buttonColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
