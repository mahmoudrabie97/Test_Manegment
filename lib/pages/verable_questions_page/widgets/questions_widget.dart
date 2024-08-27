import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class QuestionsWidge extends StatelessWidget {
  const QuestionsWidge({
    super.key,
    required this.questiontext,
    required this.questionnumber,
    required this.imageorvideofile,
  });

  final String questiontext;
  final int questionnumber;
  final String? imageorvideofile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextarabic(
              text: "$questionnumber - $questiontext",
              fontWeight: FontWeight.bold,
            ),
          ),
          if (imageorvideofile != null)
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(
                imageorvideofile ?? '',
                width: 200,
              ),
            ),
        ],
      ),
    );
  }
}
