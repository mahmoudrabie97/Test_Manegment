import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class QuestionsWidge extends StatelessWidget {
  const QuestionsWidge({
    super.key,
    required this.questiontext, // يمكن أن يكون نصًا عاديًا أو معادلة LaTeX
    required this.questionnumber,
    required this.imageorvideofile,
    required this.questiontype,
  });

  final String questiontext; // نص عادي أو معادلة LaTeX
  final int questionnumber;
  final String? imageorvideofile;
  final int questiontype;

  @override
  Widget build(BuildContext context) {
    // تحديد إذا كان النص معادلة LaTeX
    bool isLatex = questiontext.contains('\\') || questiontext.contains('\$\$');

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isLatex
              ? TeXView(
                  loadingWidgetBuilder: (context) {
                    return Center(child: CircularProgressIndicator());
                  },
                  renderingEngine: TeXViewRenderingEngine.mathjax(),
                  child: TeXViewDocument(
                    // التأكد من أن النص LaTeX صحيح
                    r'''
                    \[
                    ''' +
                        questiontext +
                        r'''
                    \]
                    ''',
                  ),
                )
              : CustomTextarabic(
                  text: "$questionnumber - $questiontext",
                  fontWeight: FontWeight.bold,
                ),
          // CustomTextarabic(text: questiontext),
          imageorvideofile == null
              ? Text('')
              : SizedBox(
                  height: 120,
                  width: 200,
                  child: Image.network(imageorvideofile ?? ''),
                ),
        ],
      ),
    );
  }
}
