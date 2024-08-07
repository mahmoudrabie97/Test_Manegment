

import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';


const List<String> list = <String>['جيد', 'جيد جدا','اختر المهاره'];



class SoloQuizeCustomDropdownButtonSkill extends StatelessWidget {
  const SoloQuizeCustomDropdownButtonSkill({super.key});

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
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*.07,
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: AppColor.darkGrey),
        borderRadius: BorderRadius.circular(20),

      ),
      child: DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,


        elevation: 16,
        style:  TextStyle(color: Colors.grey),
        underline: Container(
          width: double.infinity,
          height: 0,

        ),
        dropdownColor: Colors.white,
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(

            value: value,
            child: Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(value),
            )),
          );
        }).toList(),
      ),
    );
  }
}
