import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class SummaryOneToOneBody extends StatelessWidget {
  const SummaryOneToOneBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                CustomTextarabic(
                  text: 'ملخص المسابقه',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                Spacer(),
                Icon(
                  Icons.home,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Container(
              height: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          AssetsData.young,
                          width: 44,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 110,
                          width: 70,
                          color: Colors.green,
                          child: const Center(
                            child: Column(
                              children: [
                                CustomTextarabic(
                                  text: 'محمود',
                                  color: Colors.white,
                                ),
                                CustomTextarabic(
                                  text: '1430',
                                  color: Colors.white,
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 9),
                                  child: CustomTextarabic(
                                    text: '2',
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetsData.student,
                          width: 44,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 140,
                          width: 70,
                          color: Colors.blue,
                          child: const Center(
                            child: Column(
                              children: [
                                CustomTextarabic(
                                  text: 'محمود',
                                  color: Colors.white,
                                ),
                                CustomTextarabic(
                                  text: '1430',
                                  color: Colors.white,
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 9),
                                  child: CustomTextarabic(
                                    text: '1',
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Row();
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: 4),
          )
        ],
      ),
    );
  }
}
