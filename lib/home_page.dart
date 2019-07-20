import 'package:flutter/material.dart';
import 'package:login_system/login_page.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final mindzzle = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 128.0,
          backgroundColor: Colors.transparent,
          child: Image.asset('assets/mindzzle_logo.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome, Mindzzler!',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final about = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'ABOUT',
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    );

    final aboutText = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'PT. Sumber Solusino Pratama (Mindzzle) is a groundbreaking service provider of human resources solutions and training services. We believe in doing business that adds value to the society through our service. It all starts with treating people as an irreplaceable asset. Aligned with our mission to create an equal and objective workplace environment, we aim to optimize the existing human capital through our products and services that facilitate training and education, provide consultation and a 360-degree performance review. With all of these services, Mindzzle is your one-stop solution for HR consulting needs.',
        style: TextStyle(fontSize: 14.0, color: Colors.white),
        textAlign: TextAlign.justify,
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.orange,
          Colors.orangeAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[mindzzle, welcome, about, aboutText],
      ),
    );

    return Scaffold(
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}