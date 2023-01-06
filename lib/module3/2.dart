//  2. Write a code to display simple alert dialog with title, description and icon when button is clicked 


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:d2(),
    );
  }
}
class d2 extends StatefulWidget {
  const d2({Key? key}) : super(key: key);

  @override
  State<d2> createState() => _d2State();
}

class _d2State extends State<d2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed:() async {
                var result = await showAlertdialog(context);
              }, child:Text('Press to See Dialog')
              ),
            ],
          )
      ),
    );
  }

  showAlertdialog(BuildContext context) {
    return  showDialog(context: context, builder:(context) {
      return AlertDialog(
        title: Text('Alert Dialog'),
        content: Text('This Widget is used to create Alert dialogs'),
        icon: Icon(
          Icons.add_alert_sharp,
        ),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child:Text('OK'))
        ],
      );
    },);
  }
}