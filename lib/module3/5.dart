//  5. open alert dialog when user want to exit from the application

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: d5(),
    );
  }
}

class d5 extends StatefulWidget {
  const d5({Key? key}) : super(key: key);

  @override
  State<d5> createState() => _d5State();
}

class _d5State extends State<d5> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showexitpopup,
      child: Scaffold(
        appBar: AppBar(
          title: Text('D5'),
        ),
        body: Center(
          child: Container(
            child: Text('Override Back Button'),
          ),
        ),
      ),
    );
  }

  Future<bool> showexitpopup() async {
    return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Exit App'),
              content: Text('Do You Want To Exit an App?'),
              actions: [
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text('NO')),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text('YES')),
              ],
            );
          },
        ) ??
        false;
  }
}
