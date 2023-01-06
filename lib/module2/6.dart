//  6. create an application to display n edittext where n is number input by user

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Edittext',
    home: Scaffold(
      appBar: AppBar(title: Text('Edittext'),),
      body: InputSample(),
    ),
  ));
}

class InputSample extends StatefulWidget {
  @override
  State createState() => InputSampleState();
}

class InputSampleState extends State<InputSample> {
  String inputs = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: TextField(
              style: TextStyle(fontSize: 32, color: Colors.red),
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: 'Enter the number'),
              onChanged: (String str) {
                setState(() => inputs = str);
              },
            ),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            width: 300,
          ),
          Container(
            child: Text(
              inputs,
              style: TextStyle(fontSize: 32),
              textAlign: TextAlign.center,
            ),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            width: 300,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}