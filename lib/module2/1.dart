//  Designing

// 1. Create an application to take input number from user and print its reverse number in
// TextView without button

import 'package:flutter/material.dart';

import '1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1',
      home: d1(),
    );
  }
}
class d1 extends StatefulWidget {
  const d1({Key? key}) : super(key: key);

  @override
  State<d1> createState() => _d1State();
}

class _d1State extends State<d1> {
  String num = '';
  var numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number'),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      String rev = numberController.text;
                      num = rev.split('').reversed.join();
                    });
                  },
                  keyboardType: TextInputType.number,
                  controller: numberController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              num,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

