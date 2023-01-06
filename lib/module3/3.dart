//  3. Write a code to display alert dialog with positive, negative and neutral button and display toast
// respectively user's choice

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: d3(),
    );
  }
}

class d3 extends StatefulWidget {
  const d3({Key? key}) : super(key: key);

  @override
  State<d3> createState() => _d3State();
}

class _d3State extends State<d3> {
  var ans = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  var result = await alertdialog(context);
                },
                child: Text('Press to select choice')),
            SizedBox(
              height: 20,
            ),
            Text("Choice : $ans",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  alertdialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Select Your Choice'),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    ans = 'POSITIVE';
                  });
                  Navigator.pop(context);
                },
                child: Text('POSITIVE')),
            TextButton(
                onPressed: () {
                  setState(() {
                    ans = 'NEUTRAL';
                  });
                  Navigator.pop(context);
                },
                child: Text('NEUTRAL')),
            TextButton(
                onPressed: () {
                  setState(() {
                    ans = 'NEGATIVE';
                  });
                  Navigator.pop(context);
                },
                child: Text('NEGATIVE')),
          ],
        );
      },
    );
  }
}
