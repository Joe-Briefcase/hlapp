import 'package:flutter/material.dart';

import 'Aboutpage.dart';
import 'Donatepage.dart';
import 'Homepage.dart';
import 'Loginpage.dart';
import 'Signuppage.dart';

void main() => runApp( MyApp());

class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new  ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'login',
      routes: {
        'home': (context) => Homepage(),
        'donate': (context) => Donatepage(),
        'about': (context) => Aboutpage(),
        'login': (context) => Loginpage(),
        'signup': (context) => Signuppage(),
      },
    );
  }
}

