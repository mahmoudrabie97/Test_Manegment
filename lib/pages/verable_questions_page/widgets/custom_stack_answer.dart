import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/styles.dart';

class CustomStackAnswer extends StatelessWidget {
  CustomStackAnswer({Key? key, this.textWord = '', this.textLetter = ''})
      : super(key: key);
  final String textWord;
  final String textLetter;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: height * .08,
            decoration: const BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Center(
                child: Text(
              textWord,
              style: Styles.style17,
            )),
          ),
          Positioned(
            left: 0,
            bottom: 26,
            child: Container(
              width: 40,
              height: 35,
              decoration: const BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(5),
                ),
              ),
              child: Center(
                  child: Text(
                textLetter,
                style: Styles.style20,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
