import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 209, 38, 149)),
            foregroundColor: 
                MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
          ),
          onPressed: selectHandler,
          child: Text(answerText)),
    );
  }
}
