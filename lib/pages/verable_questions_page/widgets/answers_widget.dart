import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    super.key,
    required this.selecthandler,
    required this.answers,
    required this.containercolor,
  });

  final Function selecthandler;
  final String answers;
  final Color containercolor;

  @override
  Widget build(BuildContext context) {
    bool isLatex = answers.contains('\\') || answers.contains('\$\$');

    return GestureDetector(
      onTap: () {
        selecthandler();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: isLatex ? 70 : 45,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: containercolor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Stack(
          children: [
            if (isLatex)
              TeXView(
                loadingWidgetBuilder: (context) {
                  return Center(child: CircularProgressIndicator());
                },
                renderingEngine: TeXViewRenderingEngine.mathjax(),
                child: TeXViewDocument(
                  r'''
                  \[
                  ''' +
                      answers +
                      r'''
                  \]
                  ''',
                ),
              ),
            if (!isLatex)
              Center(
                child: Text(
                  answers,
                  style: TextStyle(
                    color: containercolor == Colors.green
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
