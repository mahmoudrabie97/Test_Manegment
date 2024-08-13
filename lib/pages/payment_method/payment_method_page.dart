import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../generated/l10n.dart';
import '../../utilites/assets.dart';

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

class PaymentCustomAppbar extends StatelessWidget {
  const PaymentCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextarabic(
          text: S.of(context).payementMethod,
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: AppColor.whiteColor,
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            color: AppColor.whiteColor,
          ),
        ),
      ],
    );
  }
}

class PaymentCustomMainContainer extends StatelessWidget {
  const PaymentCustomMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .85,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Column(
          children: [
            CustomTextarabic(
              text: S.of(context).choosePaymentMethod,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 12,),
            PaymentCutomRadioButton(),

          ],
        ),
      ),
    );
  }
}

enum SingingCharacter { credit, payPal,applePay }

class PaymentCutomRadioButton extends StatefulWidget {
  const PaymentCutomRadioButton({super.key});

  @override
  State<PaymentCutomRadioButton> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<PaymentCutomRadioButton> {
  SingingCharacter? _character = SingingCharacter.credit;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Container(
          width: MediaQuery.of(context).size.width * .76,
          height: MediaQuery.of(context).size.height * .1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: AppColor.greyColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Image.asset(AssetsData.visa),
                SizedBox(width: 25,),
                CustomTextarabic(
                  text: S.of(context).creditCard,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                Spacer(),
                Radio<SingingCharacter>(
                  value: SingingCharacter.credit,
                  groupValue: _character,
                  activeColor: AppColor.primary,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          width: MediaQuery.of(context).size.width * .76,
          height: MediaQuery.of(context).size.height * .1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: AppColor.greyColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Image.asset(AssetsData.visa),
                SizedBox(width: 25,),
                Text('PayPal'
                  ,style: TextStyle(  fontWeight: FontWeight.w500,
                    fontSize: 14,),

                ),
                Spacer(),
                Radio<SingingCharacter>(
                  value: SingingCharacter.payPal,
                  groupValue: _character,
                  activeColor: AppColor.primary,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          width: MediaQuery.of(context).size.width * .76,
          height: MediaQuery.of(context).size.height * .1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: AppColor.greyColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Image.asset(AssetsData.visa),
                SizedBox(width: 25,),
                Text('Apple Pay'
                  ,style: TextStyle(  fontWeight: FontWeight.w500,
                    fontSize: 14,),

                ),
                Spacer(),
                Radio<SingingCharacter>(

                  value: SingingCharacter.applePay,
                  groupValue: _character,
                  activeColor: AppColor.primary,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
