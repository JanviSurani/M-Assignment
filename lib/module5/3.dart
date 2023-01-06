// 3.Create an app for Manage Login and Logout Operation using SharedPrefrence
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);
  runApp(MaterialApp(home: email == null ? Login() : Home()));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString('email', 'useremail@gmail.com');
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext ctx) => Home()));
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.remove('email');
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext ctx) => Login()));
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}