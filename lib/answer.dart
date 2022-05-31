import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answertext;
  var x;
  Answer(this.x, this.answertext);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace

    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: x,
        child: Text(
          answertext,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
