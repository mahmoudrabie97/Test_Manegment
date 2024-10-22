import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_bottom_sheet_item.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_event_item.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_small_container_challenge.dart';
import 'package:test_mangement/pages/home_page/widgets/customevent_row.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';

class CustomHomePageMainContainer extends StatelessWidget {
  const CustomHomePageMainContainer({super.key});
  void showbottomsheetItems({required BuildContext context}) {
    showBottomSheet(
        backgroundColor: Colors.blue,
        context: context,
        builder: (context) {
          return const CustomerBottomSheetItem();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .9,
            height: MediaQuery.of(context).size.height * .55,
            decoration: const BoxDecoration(
              color: Color(0xff82BAE0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25)),
                      child: ListView.builder(
                        itemCount: 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Row(
                            children: [
                              CustomSmallContainerchallenge(
                                containercolor: Color(0xff88E68B),
                                tiltle: 'ابدأ الان',
                                subtitle: 'تحدي النفس',
                                image: AssetsData.student,
                              ),
                              CustomSmallContainerchallenge(
                                  containercolor: AppColor.pink,
                                  tiltle: 'ابدأ الان',
                                  subtitle: '1 ضد 1',
                                  image: 'assets/images/oneone.png'),
                              CustomSmallContainerchallenge(
                                  containercolor: Color(0xffBC4A26),
                                  tiltle: 'ابدأ الان',
                                  subtitle: 'فريق ',
                                  image: 'assets/svg/all.png'),
                            ],
                          );
                        },
                      )),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25)),
                      child: ListView.builder(
                        itemCount: 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Row(
                            children: [
                              CustomSmallContainerchallenge(
                                containercolor: Color(0xffFF9B57),
                                tiltle: 'ابدأ الان',
                                subtitle: 'تدريب مهارات',
                                image: AssetsData.student,
                              ),
                              CustomSmallContainerchallenge(
                                containercolor: Color(0xff6AC38D),
                                tiltle: 'تدريب مفتوح',
                                subtitle: '1 ضد 1',
                                image: 'assets/images/oneone.png',
                              ),
                            ],
                          );
                        },
                      )),
                ],
              ),
            ),

            // child: ListView(
            //   //physics: NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   children: [
            //     Padding(
            //       padding:
            //           const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
            //       child: Column(
            //         children: [
            //           InkWell(
            //             onTap: () {
            //               showbottomsheetItems(context: context);
            //             },
            //             child: CustomTextarabic(
            //               text: S.of(context).Explorecategories,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w500,
            //             ),
            //           ),
            //           InkWell(
            //             onTap: () {
            //               showbottomsheetItems(context: context);
            //             },
            //             child: CustomHomePageSubContainer(
            //               color: AppColor.purple,
            //               customWidget: HomePageIetmSubContainer(
            //                 image: AssetsData.choose,
            //                 text: S.of(context).randomquiz,
            //               ),
            //             ),
            //           ),
            //           InkWell(
            //             onTap: () {
            //               showbottomsheetItems(context: context);
            //             },
            //             child: CustomHomePageSubContainer(
            //               color: AppColor.greenColor,
            //               customWidget: HomePageIetmSubContainer(
            //                 image: AssetsData.sport,
            //                 text: S.of(context).Askhimverbally,
            //               ),
            //             ),
            //           ),
            //           InkWell(
            //             onTap: () {
            //               showbottomsheetItems(context: context);
            //             },
            //             child: CustomHomePageSubContainer(
            //               color: AppColor.pinkLight,
            //               customWidget: HomePageIetmSubContainer(
            //                 image: AssetsData.manyQuestions,
            //                 text: S.of(context).Quantitativequestions,
            //               ),
            //             ),
            //           ),
            //           SizedBox(
            //             height: 40,
            //           )
            //         ],
            //       ),
            //     ),
            //     SizedBox(
            //       height: 6,
            //     )
            //   ],
            // ),
          ),
          const Customeventdrow(),
          SizedBox(
            width: double.infinity,
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // تأكد من تحديد عدد العناصر
              itemBuilder: (context, index) {
                return CustomEventsItemBuilder();
              },
            ),
          )
        ],
      ),
    );
  }
}
