import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String inputAnswer;
  Answer(this.selectHandler, this.inputAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(
          inputAnswer,
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
