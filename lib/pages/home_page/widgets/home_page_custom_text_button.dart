import 'package:flutter/material.dart';
import 'package:test_mangement/pages/events_page/events_page.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class HomePageCustomTextButton extends StatelessWidget {
  const HomePageCustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: SizedBox(
        width: 100,
        child: TextButton(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              )),
              backgroundColor:
                  const WidgetStatePropertyAll(AppColor.whiteColor),
            ),
            onPressed: () {
              context.push(const EventsPage());
            },
            child: Row(
              children: [
                const CustomTextarabic(
                  text: "المزيد",
                  color: AppColor.darkBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/svg/icon-park-outline_next.png'),
              ],
            )),
      ),
    );
  }
}
