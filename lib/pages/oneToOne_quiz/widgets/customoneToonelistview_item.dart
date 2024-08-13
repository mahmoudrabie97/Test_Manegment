import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomOneToOneListViewIetm extends StatefulWidget {
  const CustomOneToOneListViewIetm({super.key});

  @override
  State<CustomOneToOneListViewIetm> createState() =>
      _CustomOneToOneListViewIetmState();
}

class _CustomOneToOneListViewIetmState
    extends State<CustomOneToOneListViewIetm> {
  bool? checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 30,
                  child: CheckboxListTile(
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                ),
              ),
              Image.asset(AssetsData.person),
              SizedBox(
                width: 15,
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  CustomTextarabic(
                    text: 'محمود محمد',
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  CustomTextarabic(
                    text: 'الهويه : 5000 ',
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.reply_sharp),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
