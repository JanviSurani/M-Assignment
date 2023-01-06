//   5. create an application to increate font size when plus button click and decrease when minus
//   button click


// import 'package:flutter/material.dart';
// import 'package:assignment_flutter/module2/splash_screen.dart';
//
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Splash(),
//     );
//   }
// }
//
// class ShowHideDemo extends StatefulWidget {
//   @override
//   _ShowHideDemoState createState() {
//     return _ShowHideDemoState();
//   }
// }
//
// class _ShowHideDemoState extends State {
//   bool _isVisible = true;
//
//   void showToast() {
//     setState(() {
//       _isVisible = !_isVisible;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.cyan,
//         title: Text('Flutter Show/Hide Widget Demo'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Visibility(
//               visible: _isVisible,
//               child: Image.asset("assets/logo.png",
//                 height: 300,
//                 fit: BoxFit.contain,
//               ),
//             ),
//             Text("FlutterDevs is a protruding flutter app development company with an extensive "
//                 "in-house team of 30+ seasoned professionals who know exactly what you need "
//                 "to strengthen your business across various dimensions. With more than 10+ years "
//                 "of experience in mobile applications, we know your needs very well."
//                 ,style: TextStyle(fontSize: 20)
//             ),
//             SizedBox(height: 35,),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   textStyle: TextStyle(fontSize: 20),
//                   minimumSize: Size.fromHeight(50),
//                 ),
//                 onPressed: showToast,
//                 child: Text("Show/Hide")
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
@override
_State createState() => _State();
}

class _State extends State<MyApp> {
  double custFontSize = 20;

  void changeFontSize() async{
    setState(() {
      custFontSize;
    });
  }

  increment(){
    setState((){
      custFontSize+1;
    });
  }

  decrement(){
    setState((){
      custFontSize-1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increment Decrement'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Jenisha !!!!!',
                  style: TextStyle(fontSize: custFontSize),
                ),
                SizedBox(height: 16,),

                ElevatedButton(
                    onPressed: ((){
                      custFontSize--;
                      changeFontSize();
                    }),
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 24),
                    )),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: ((){
                      custFontSize++;
                      changeFontSize();
                    }),
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 24),
                    ))
              ]
          )
      ),
    );
  }
}


