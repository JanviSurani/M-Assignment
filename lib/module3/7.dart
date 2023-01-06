// 7. What are different menus in android. Explain each with example

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:d7(),
    );
  }
}
class d7 extends StatefulWidget {
  const d7({Key? key}) : super(key: key);

  @override
  State<d7> createState() => _d7State();
}

class _d7State extends State<d7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Seach here',
                  ),
                );
              },
              icon:Icon(
                Icons.search,
              )),
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(
                value: '',
                child: Text('Null')
            ),
            PopupMenuItem(
                value: '',
                child: Text('Null')
            ),
          ]),
        ],
        centerTitle: true,
        title: Text('D7'),
      ),
      body: Center(
        child: Container(
          child: Text('Menu of Flutter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}