// 7. create an application to display Textview when checkbox is checked and hide otherwise

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: d7(),
    );
  }
}
class d7 extends StatefulWidget {
  const d7({Key? key}) : super(key: key);

  @override
  State<d7> createState() => _d7State();
}

class _d7State extends State<d7> {
  bool isChecked = false;
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D7'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 80,right: 70),
              child: ListTile(
                title: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {

                },
                leading:Checkbox(
                  value: isChecked,
                  onChanged:(value) {
                    setState(() {
                      isChecked = value!;
                      if(isChecked==false){
                        text = '';
                      }else{
                        text = 'You Made It';
                      }
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}