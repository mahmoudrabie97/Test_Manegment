import 'package:flutter/material.dart';
import 'package:test_mangement/pages/payment_method/payment_method_page.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/customtext.dart';

class WalletCustomColumnIetm extends StatelessWidget {
  const WalletCustomColumnIetm(
      {super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 30),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              onPressed: () {
                context.push(PaymentMethodPage());
              },
              icon: Icon(
                icon,
                size: 35,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextarabic(
            text: text,
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: AppColor.primary,
          ),
        ],
      ),
    );
  }
}
