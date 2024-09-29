import 'package:flutter/material.dart';
import 'package:test_mangement/models/user_players_model.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomOneToOneListViewIetm extends StatelessWidget {
  final Data? availableplayer;
  final int index;
  final bool isSelected; // خاصية لتحديد إذا كان اللاعب مختار أم لا

  const CustomOneToOneListViewIetm({
    super.key,
    required this.availableplayer,
    required this.index,
    this.isSelected = false, // القيمة الافتراضية غير مختار
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: AppColor.whiteColor, // الخلفية ثابتة ولا تتغير
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            children: [
              // Radio Button لتحديد اللاعب

              // صورة اللاعب بناءً على جنسه
              Image.asset(
                availableplayer!.gender == 1 || availableplayer!.gender == 0
                    ? AssetsData.boy
                    : AssetsData.person,
              ),

              const SizedBox(width: 15),

              // تفاصيل اللاعب
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  CustomTextarabic(
                    text: '${availableplayer!.name}',
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  CustomTextarabic(
                    text: 'الهويه ${availableplayer!.nationalId}',
                    color: Colors.blue,
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                width: 30,
                child: RadioListTile<int>(
                  value: index,
                  groupValue: isSelected
                      ? index
                      : null, // يتم تحديد اللاعب بدون تغيير اللون
                  onChanged: (int? newValue) {
                    // المنطق الخاص بتحديث الـ Cubit موجود خارج هذا الـ Widget
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
