import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomEventsItemBuilder extends StatelessWidget {
  const CustomEventsItemBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 320, // إضافة عرض ثابت هنا
      margin: const EdgeInsets.symmetric(
          horizontal: 8.0), // لإضافة بعض المسافات بين العناصر
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff5AB3EE),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // إضافة محاذاة النص إلى اليسار
                children: [
                  const Expanded(
                    child: CustomTextarabic(
                      text: 'المنافسات علي مستوي المدينه الرياض ',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const CustomTextarabic(
                            text: '30 سؤال',
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Container(
                            height: 20,
                            width: 2,
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const CustomTextarabic(
                            text: '200 لاعب',
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Image.asset('assets/svg/icon-park-outline_next.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 40, // تصغير الدائرة قليلاً لتناسب العرض
              backgroundColor: Colors.white.withOpacity(.1),
              child: Image.asset('assets/svg/book.png'),
            ),
          ],
        ),
      ),
    );
  }
}
