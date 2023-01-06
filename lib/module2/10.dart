//  10. Write a program you have take three seek bar controls. From three Seekbar which Seekbar
// value changed the background color of device will be changed.

// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:d4(),
    );
  }
}
class d4 extends StatefulWidget {
  const d4({Key? key}) : super(key: key);

  @override
  State<d4> createState() => _d4State();
}

class _d4State extends State<d4> {
  var color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text('D4'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color:color,
        ),
        child: Center(
          child: ElevatedButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.black),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(color),
              ),
              onPressed:() {
                setState(() {
                  color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                });
              }, child:Text(
            'Tap To Change BackGround Color',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
          ),
        ),
      ),
    );
  }
}
