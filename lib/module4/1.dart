//  Navigation & routing
// 1.Write a code to display Splash Screen using Activity
import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(SplashScreenExample());

class SplashScreenExample extends StatefulWidget {
  @override
  State<SplashScreenExample> createState() => _SplashScreenExampleState();
}

class _SplashScreenExampleState extends State<SplashScreenExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: SplashScreen(),
// AnimatedSplashScreen(
//   splash: "assets/images/leaf.png",
//   splashIconSize: 200,
//   nextScreen: LoginScreen(),
//   backgroundColor: Colors.green.shade100,
//   splashTransition: SplashTransition.slideTransition,
// ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Image(
          image: AssetImage('assets/flutter.jpg'),
        )),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("Hello"),
    ));
  }
}
