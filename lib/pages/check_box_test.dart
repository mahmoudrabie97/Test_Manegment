import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  final List<Map> questionList;

  Questions(this.questionList);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  bool _questionSelected = true;

  Widget _buildQuestionItem(BuildContext context, int index) {
    return ListTile(
      title: Text(widget.questionList[index]['question']),
      trailing: Checkbox(
        value: _questionSelected,
        onChanged: (bool ?val){
          setState(() {
            _questionSelected = val!;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemBuilder: _buildQuestionItem,
      itemCount: widget.questionList.length,
    );
  }
}