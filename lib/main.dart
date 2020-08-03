import 'dart:ffi';
import 'package:flutter/material.dart';
import 'question.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var question = 0;
  // fun for Question increen
  Void Qquestion1() {
    question = question + 1;
    print(question);
  }

  Void Qquestion3() {
    print('Anse3');
  }

  @override
  Widget build(BuildContext context) {
    var _question = [
      'How are you doing?',
      'What are you going on?',
      'How are you today?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("khmer new 2090"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
                child: new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blueAccent,
              child: Title(color: Colors.black, child: Text("Hello")),
              alignment: Alignment.center,
            )),
            Question(_question.elementAt(2)),
            RaisedButton(
              child: Text('Answer Two'),
              textColor: Colors.blue,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              onPressed: Qquestion1,
            ),
            RaisedButton(
              child: Text('Answer Three'),
              textColor: Colors.red,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              onPressed: () => print('Answer two'),
            ),
            RaisedButton(
              child: Text('Answer Foure'),
              textColor: Colors.blue,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              onPressed: () {
                print('Answer foure');
              },
            ),
          ],
        ),
      ),
    );
  }
}
