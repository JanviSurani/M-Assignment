//   3. Create an application with radio buttons (Add, Substraction, Multiply, Division) EditText
//   (number1, number2) and print result as per user choice from radio button in TextView



import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:d3(),
    );
  }
}
class d3 extends StatefulWidget {
  const d3({Key? key}) : super(key: key);

  @override
  State<d3> createState() => _d3State();
}

class _d3State extends State<d3> {
  String ? add;
  String ? sub;
  String ? mul;
  String ? div;
  String ? math;
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  var res = '';
  int n1=0;
  int n2=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('d3'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 100,right: 100),
                  child: TextField(
                    controller: _num1,
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(220),
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100,right: 100),
                  child: TextField(
                    controller: _num2,
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(220),
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RadioListTile(
                  title: Text('ADDITION'),
                  value: "addition",
                  groupValue: math,
                  onChanged: (value) {
                    setState(() {
                      math = value.toString();
                      add=math;
                    });
                  },),
                RadioListTile(
                  title: Text('SUBTRACTION'),
                  value: "subtraction",
                  groupValue: math,
                  onChanged: (value) {
                    setState(() {
                      math = value.toString();
                      sub=math;
                    });
                  },),
                RadioListTile(
                  title: Text('MULTIPLICATION'),
                  value: "multiplication",
                  groupValue: math,
                  onChanged: (value) {
                    setState(() {
                      math = value.toString();
                      mul=math;
                    });
                  },),
                RadioListTile(
                  title: Text('DIVISION'),
                  value: "division",
                  groupValue: math,
                  onChanged: (value) {
                    setState(() {
                      math = value.toString();
                      div=math;
                    });
                  },),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                  if(math==add){
                    setState(() {
                      n1 =int.parse(_num1.text);
                      n2 =int.parse(_num2.text);
                      res = (n1+n2).toString();
                    });
                  }else if(math==sub){
                    setState(() {
                      n1 =int.parse(_num1.text);
                      n2 =int.parse(_num2.text);
                      res = (n1-n2).toString();
                    });
                  }else if(math==mul){
                    setState(() {
                      n1 =int.parse(_num1.text);
                      n2 =int.parse(_num2.text);
                      res = (n1*n2).toString();
                    });
                  }else if(math==div){
                    setState(() {
                      n1 =int.parse(_num1.text);
                      n2 =int.parse(_num2.text);
                      res = (n1/n2).toString();
                    });
                  }
                },
                  child: Text('Calculate'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'ANS :$res',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

