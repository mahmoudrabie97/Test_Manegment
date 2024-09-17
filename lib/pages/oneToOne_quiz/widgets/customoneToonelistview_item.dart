import 'package:flutter/material.dart';
import 'package:test_mangement/cubit/user_players_cubit/user_players_cubit.dart';
import 'package:test_mangement/models/user_players_model.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomOneToOneListViewIetm extends StatefulWidget {
  final Data? availableplayer;

  final int index;
  const CustomOneToOneListViewIetm({
    super.key,
    required this.availableplayer,
    required this.index,
  });

  @override
  State<CustomOneToOneListViewIetm> createState() =>
      _CustomOneToOneListViewIetmState();
}

class _CustomOneToOneListViewIetmState
    extends State<CustomOneToOneListViewIetm> {
  bool? checkedValue = false;

  _CustomOneToOneListViewIetmState();

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
          padding: EdgeInsets.all(0.0),
          child: Row(
            children: [
              // Expanded(
              //   child: SizedBox(
              //     width: 30,
              //     child: CheckboxListTile(
              //       value: checkedValue,
              //       onChanged: (newValue) {
              //         setState(() {
              //           checkedValue = newValue;
              //         });
              //       },
              //       controlAffinity: ListTileControlAffinity
              //           .leading, //  <-- leading Checkbox
              //     ),
              //   ),
              // ),
              Image.asset(widget.availableplayer!.gender == 1 ||
                      widget.availableplayer!.gender == 0
                  ? AssetsData.boy
                  : AssetsData.person),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  CustomTextarabic(
                    text: '${widget.availableplayer!.name}',
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  CustomTextarabic(
                    text: 'الهويه ${widget.availableplayer!.nationalId}',
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.reply_sharp),
              //   color: Colors.blue,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
