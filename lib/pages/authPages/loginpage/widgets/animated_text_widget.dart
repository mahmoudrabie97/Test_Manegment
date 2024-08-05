import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/utilites/appcolors.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: AnimatedTextKit(repeatForever: true, animatedTexts: [
        ColorizeAnimatedText(S.of(context).Welcomback,
            textStyle:
                const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            colors: [
              Colors.black,
              AppColor.primary,
              Colors.black,
              AppColor.lightGreenColor,
              Colors.black,
            ]),
      ]),
    );
  }
}
