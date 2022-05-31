import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  var q;
  var qi;
  var a;
  Quiz(this.q, this.qi, this.a);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(q[qi]["questions"]),
        SizedBox(
          height: 10,
        ),
        ...(q[qi]["answers"] as List).map((x) {
          return Answer(() => a(x["score"]), x["text"]);
        }).toList(),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
