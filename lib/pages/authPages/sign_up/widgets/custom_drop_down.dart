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
                if (AuthCubit.get(context).dropdownValue ==
                    AuthCubit.get(context).list.first)
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 9),
                      child: Icon(
                        Icons.male,
                        size: 25,
                      ),
                    ),
                  ),
                if (AuthCubit.get(context).dropdownValue ==
                    AuthCubit.get(context).list.last)
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 9),
                      child: Icon(
                        Icons.female,
                        size: 25,
                      ),
                    ),
                  ),
                DropdownButton<String>(
                  iconSize: 18,
                  itemHeight: 50,
                  // menuMaxHeight: 20,
                  //  padding: EdgeInsets.only(right: 10),
                  isDense: true,

                  ///disabledHint: Text('j'),
                  //isExpanded: true,
                  alignment: Alignment.bottomLeft,
                  value: AuthCubit.get(context).dropdownValue,
                  hint: const Center(
                    child: CustomTextarabic(
                      text: "النوع",
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

                  icon: const Padding(
                    padding: EdgeInsets.only(right: 225.0),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
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
