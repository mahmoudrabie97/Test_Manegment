import 'package:flutter/material.dart';
import 'package:test_mangement/pages/payment_method/widgets/payment_custom_appbar.dart';
import 'package:test_mangement/pages/payment_method/widgets/payment_custom_main_container.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../generated/l10n.dart';
import '../../utilites/assets.dart';
import '../../utilites/widgets/custombutton.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
          child: Column(
            children: [
              PaymentCustomAppbar(),
              SizedBox(
                height: 12,
              ),
              PaymentCustomMainContainer(),
            ],
          ),
        ),
      ),
    );
  }
}






