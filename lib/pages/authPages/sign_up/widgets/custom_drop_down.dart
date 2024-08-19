import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/authcubit/authcubit.dart';
import 'package:test_mangement/cubit/authcubit/authstates.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const DropdownButtonExample();
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  bool ismale = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .07,
          decoration: BoxDecoration(
            border: Border.all(width: .8, color: AppColor.darkGrey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 9),
                    child: Icon(
                      Icons.female_rounded,
                      size: 25,
                    ),
                  ),
                ),
                DropdownButton<String>(
                  alignment: Alignment.bottomLeft,
                  value: AuthCubit.get(context).dropdownValue,
                  hint: const CustomTextarabic(
                    text: "اختر المهاره",
                    fontSize: 8,
                  ),
                  icon: const Padding(
                    padding: EdgeInsets.only(right: 250.0),
                    child: Icon(Icons.keyboard_arrow_down),
                  ),
                  elevation: 16,
                  style: const TextStyle(color: Colors.grey),
                  underline: Container(
                    width: double.infinity,
                    height: 0,
                  ),
                  dropdownColor: Colors.white,
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    AuthCubit.get(context).changedropdownvalur(newval: value);
                  },
                  items: AuthCubit.get(context)
                      .list
                      .map<DropdownMenuItem<String>>((String value) {
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
      },
    );
  }
}
