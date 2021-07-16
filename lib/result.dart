import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 35) {
      resultText = 'You are awesome and on point!!';
    } else if (resultScore >= 30) {
      resultText = 'You are not so bad!!';
    } else {
      resultText = 'You lack taste!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.maxFinite,
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: resetHandler,
              child: Text(
                'Restart Quiz!',
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.blue)),
            )
          ],
        ),
      ),
    );
  }
}
