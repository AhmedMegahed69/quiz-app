import 'package:flutter/material.dart';
import 'package:test_2/main.dart';

class Question extends StatelessWidget {
  var questiontext;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Question(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(10.0),
      child: Text(
        questiontext,
        // ignore: prefer_const_constructors
        style: TextStyle(fontSize: 30, color: b),
        textAlign: TextAlign.center,
      ),
    );
  }
}
