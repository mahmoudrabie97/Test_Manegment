

import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';


const List<String> list = <String>['ذكر', 'انثى'];



class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({super.key});

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
        border: Border.all(width: .8,color: AppColor.darkGrey),
        borderRadius: BorderRadius.circular(10),

      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Row(
          children: [
            Icon(Icons.female_rounded,),
            SizedBox(width:MediaQuery.of(context).size.width*.05,),

            DropdownButton<String>(
              value: dropdownValue,
              icon: Padding(
                padding: const EdgeInsets.only(right: 250.0),
                child: const Icon(Icons.keyboard_arrow_down),
              ),

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
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
