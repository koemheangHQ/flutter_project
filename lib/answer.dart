import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: RaisedButton(
        onPressed: null,
        color: Colors.red,
        child: Text("Answer"),
      ),
    );
  }
}
