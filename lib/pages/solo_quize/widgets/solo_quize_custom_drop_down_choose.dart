import 'package:flutter/material.dart';
import 'package:test_mangement/cubit/exam_level_cubit/exam_level_cubit.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class SoloQuizeCustomDropdownButtonLevel extends StatelessWidget {
  const SoloQuizeCustomDropdownButtonLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonExample();
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = 'اختر المستوي';

  @override
  Widget build(BuildContext context) {
    List<String> list = ExamLevelCubit.get(context).examslevellistodown;

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .07,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColor.darkGrey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        hint: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextarabic(
            text: 'اختر المستوي',
            fontSize: 13,
          ),
        ),
        value: dropdownValue == 'اختر المستوي' && list.isNotEmpty
            ? null
            : dropdownValue,
        elevation: 16,
        style: TextStyle(color: Colors.grey),
        underline: Container(
          width: double.infinity,
          height: 0,
        ),
        dropdownColor: Colors.white,
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value ?? 'اختر المستوي';
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(value),
            ),
          );
        }).toList(),
      ),
    );
  }
}
