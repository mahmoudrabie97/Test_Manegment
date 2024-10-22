import 'package:flutter/material.dart';
import 'package:test_mangement/pages/friendrequestpage/add_friends_page.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomRowInfo extends StatelessWidget {
  const CustomRowInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: const Color(0xffFF6DAA),
                  radius: 35,
                  child: Image.asset(AssetsData.student)),
              const Column(
                children: [
                  CustomTextarabic(
                    text: 'صباح الخير',
                    color: Colors.white,
                  ),
                  Text(' محمود ربيع ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColor.whiteColor,
                      )),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                    iconSize: 33,
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                    color: Colors.amber,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFF9B57)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(AssetsData.dollar),
                          const CustomTextarabic(
                            text: '6045',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              // Row(
              //   children: [
              //     IconButton(
              //       iconSize: 30,
              //       onPressed: () {
              //         context.push(const Requestfriendpage());
              //       },
              //       icon: const Icon(Icons.person),
              //       color: Colors.white,
              //     ),
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
