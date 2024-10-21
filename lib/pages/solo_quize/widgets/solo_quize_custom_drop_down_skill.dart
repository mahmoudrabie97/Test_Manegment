import 'package:flutter/material.dart';
import 'package:test_mangement/cubit/exam_level_cubit/exam_level_cubit.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class SoloQuizeCustomDropdownButtonSkill extends StatelessWidget {
  const SoloQuizeCustomDropdownButtonSkill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonExample();
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({Key? key}) : super(key: key);

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      'سهل ','صعب'
    ];

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .06,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Color(0xff3498DBA6)),
        borderRadius: BorderRadius.circular(25),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        hint: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextarabic(
            text: 'اختر المهاره',
            fontSize: 13,
          ),
        ),
        value: dropdownValue,
        elevation: 16,
        style: TextStyle(color: Colors.grey),
        underline: Container(
          width: double.infinity,
          height: 0,
        ),
        dropdownColor: Colors.white,
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value;
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
