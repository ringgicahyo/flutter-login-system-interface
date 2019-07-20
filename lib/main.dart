import 'package:flutter/material.dart';
import 'package:login_system/signup.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'forgot_password.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    SignupPage.tag: (context) => SignupPage(),
    ForgotPassPage.tag: (context) => ForgotPassPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindzzle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Montserrat',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}