







import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

final List<String> _dropdownItems = ['عنصر 1', 'عنصر2', 'عنصر 3'];



class CreateGroupCustomDropDownCategory extends StatelessWidget {
  const CreateGroupCustomDropDownCategory({super.key});

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
  String? dropdownValue ;

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

        hint: const Center(child: CustomTextarabic(text: 'فئة',)),
        elevation: 16,
        style:  const TextStyle(color: Colors.grey),
        underline: const SizedBox(
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
        items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
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




// import 'package:flutter/material.dart';
//
// class DropdownWithTitle extends StatefulWidget {
//   @override
//   _DropdownWithTitleState createState() => _DropdownWithTitleState();
// }
//
// class _DropdownWithTitleState extends State<DropdownWithTitle> {
//   String? _selectedValue;
//   final List<String> _dropdownItems = ['Item 1', 'Item 2', 'Item 3'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             'Select an Item',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         SizedBox(height: 20), // Space between title and dropdown
//         DropdownButton<String>(
//           value: _selectedValue,
//           hint: Text('Choose an option'),
//           items: _dropdownItems.map((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//           onChanged: (String? newValue) {
//             setState(() {
//               _selectedValue = newValue;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }