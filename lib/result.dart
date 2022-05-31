import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  var af;
  var resultscore;
  String get sentax {
    String textresult;
    if (resultscore >= 70) {
      textresult = "fantastic";
    } else if (resultscore >= 40) {
      textresult = "not bad";
    } else {
      textresult = "bad";
    }

    return textresult;
  }

  Result(this.af, this.resultscore);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Total Score is : ${resultscore} ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: b),
        ),
        Text(
          sentax,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: b),
        ),
        FlatButton(
            onPressed: af,
            child: Text(
              "restart app",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ))
      ],
    ));
  }
}
