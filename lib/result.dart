import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;
  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String resultText;
    if (resultScore == 4) {
      resultText = 'Sheeshhhhhhhhhhhhh';
    } else if (resultScore <= 1) {
      resultText = 'Noobda';
    } else {
      resultText = 'GGWP';
    }
    return resultText;
  }
  String get scorePrint{
    String scoreText;
    scoreText = 'Your Score is: $resultScore';
    return scoreText;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              scorePrint,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,),
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: reset, child: Text(
              'Reset the Quiz!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
              style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(245, 209, 38, 149)),
              foregroundColor: 
                  MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
            ),)
          ],
        ),
      ),
    );
  }
}
