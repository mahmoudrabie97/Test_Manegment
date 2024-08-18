import 'package:flutter/material.dart';
import 'package:test_mangement/cubit/exam_level_cubit/exam_level_cubit.dart';
import 'package:test_mangement/utilites/appcolors.dart';

class SoloQuizeCustomDropdownButtonSkill extends StatelessWidget {
  const SoloQuizeCustomDropdownButtonSkill({Key? key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonExample();
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({Key? key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = 'اختر المهاره';

  @override
  Widget build(BuildContext context) {
    List<String> list = ExamLevelCubit.get(context).shillslevellistForderodown;

    if (!list.contains(dropdownValue)) {
      dropdownValue = list.first;
    }

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .07,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColor.darkGrey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        value: ExamLevelCubit.get(context).shillslevellistForderodown.isEmpty
            ? "اختر المهاره"
            : dropdownValue,
        elevation: 16,
        style: TextStyle(color: Colors.grey),
        underline: Container(
          width: double.infinity,
          height: 0,
        ),
        dropdownColor: Colors.white,
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
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
