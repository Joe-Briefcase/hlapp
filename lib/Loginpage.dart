import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState () => new _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.black54,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () => Navigator.pushNamed(context, 'home'),
          color: Colors.black54,
          child: Text('Log ind', style: TextStyle(color: Colors.yellow)),
        ),
      ),
    );

    final signupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.black54,
        elevation: 3.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () => Navigator.pushNamed(context, 'signup'),
          color: Colors.black54,
          child: Text('Har du ikke en bruger?', style: TextStyle(color: Colors.yellow)),
        ),
      ),
    );

    final forgotlabel = FlatButton(
      child: Text(
        'Glemt dit password?',
        style: TextStyle(color: Colors.yellow),
      ),
      onPressed: (){},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            loginButton,
            forgotlabel,
            SizedBox(height: 24.0),
            signupButton,
          ],
        ),
      ),
    );
  }
}

