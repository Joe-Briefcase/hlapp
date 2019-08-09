import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget{
  @override
  _Signuppagestate createState () => new _Signuppagestate();
}

class _Signuppagestate extends State<Signuppage>{
  @override
  Widget build(BuildContext context) {

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'email@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue:  'password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
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
          onPressed: (){},
          color: Colors.black54,
          child: Text('Tilmeld dig', style: TextStyle(color: Colors.yellow)),
        ),
      ),
    );

    final backButton = FlatButton(
      child: Text(
        'Tilbage',
        style: TextStyle(color: Colors.yellow),
      ),
      onPressed: () => Navigator.pushNamed(context, 'login'),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            email,
            SizedBox(height: 48.0),
            password,
            SizedBox(height: 24.0),
            signupButton,
            backButton,
          ],
        ),
      ),
    );
  }

}