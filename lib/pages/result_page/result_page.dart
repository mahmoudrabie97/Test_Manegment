import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.score, required this.res});
  final int score;
  final VoidCallback res;

  String get txff {
    return '\nCongrats  :"\nYour Score:' '$score';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 60,
      ),
      height: 300,
      width: 300,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: Icon(
              Icons.assessment,
              size: 30,
              color: Colors.green,
            ),
          ),
          Text(
            txff,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: res, child: Text('restar tquiz'))
        ],
      ),
    );
  }
}
