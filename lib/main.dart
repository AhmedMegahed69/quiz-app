// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_2/answer.dart';
import 'package:test_2/quiz.dart';
import 'package:test_2/result.dart';
import 'question.dart';

void main() {
  runApp(Myapp());
}

// ignore: use_key_in_widget_constructors
class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Myappstate();
  }
}

Color b = Colors.black;
Color w = Colors.white;

// ignore: use_key_in_widget_constructors
class Myappstate extends State<Myapp> {
  List<Map<String, Object>> question = [
    {
      "questions": "what's your favorite color? ",
      "answers": [
        {"text": "blue", "score": 10},
        {"text": "black", "score": 20},
        {"text": "yellow", "score": 30},
        {"text": "white", "score": 40}
      ]
    },
    {
      "questions": "what's your favorite animal? ",
      "answers": [
        {"text": "lion", "score": 10},
        {"text": "tiger", "score": 20},
        {"text": "elephant", "score": 30},
        {"text": "cat", "score": 40},
      ]
    },
    {
      "questions": "what's your favorite friend? ",
      "answers": [
        {"text": "ahmed", "score": 10},
        {"text": "ali", "score": 20},
        {"text": "mohsen", "score": 30},
        {"text": "mego", "score": 40},
      ]
    },
  ];
  int questionindex = 0;
  int totalscore = 0;

  int num0 = 0;
  int num1 = 0;
  int num2 = 0;
  bool isswatch = false;

  void answerquestion(int score) {
    if (questionindex == 0) {
      num0 = score;
    } else if (questionindex == 1) {
      num1 = score;
    } else if (questionindex == 2) {
      num2 = score;
    }
    totalscore += score;

    setState(() {
      questionindex += 1;
    });
  }

  void reset() {
    setState(() {
      questionindex = 0;
      totalscore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(fontSize: 20),
          ),
          actions: <Widget>[
            Switch(
              value: isswatch,
              onChanged: (value) {
                setState(() {
                  isswatch = value;
                  if (isswatch == true) {
                    b = Colors.white;
                    w = Colors.black;
                  }
                  if (isswatch == false) {
                    b = Colors.black;
                    w = Colors.white;
                  }
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: b,
              inactiveTrackColor: b,
            ),
          ],
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
            color: w,
            width: double.infinity,
            child: questionindex < question.length
                ? Quiz(question, questionindex, answerquestion)
                : Result(reset, totalscore)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (questionindex == 1) {
              totalscore -= num0;
            } else if (questionindex == 2) {
              totalscore -= num1;
            } else if (questionindex == 3) {
              totalscore -= num2;
            }
            setState(() {
              if (questionindex > 0) {
                questionindex -= 1;
              }
            });
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
