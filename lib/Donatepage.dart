import 'package:flutter/material.dart';

class Donatepage extends StatefulWidget {
  Donatepage({Key key, this.title});
  final String title;

  @override
  _DonatepageState createState() => _DonatepageState();

}

class _DonatepageState extends State<Donatepage> {

  final _formKey = GlobalKey<FormState>();

  FocusNode DonateFocusNode;

  @override
  void initState() {
    super.initState();

    DonateFocusNode = FocusNode();
  }

  @override
  void dispose() {
    DonateFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              focusNode: DonateFocusNode,
              decoration: InputDecoration(
                labelText: 'Sælger nummer'
              ),
            ),
            TextFormField(
              focusNode: DonateFocusNode,
              decoration: InputDecoration(
                labelText: 'Kr.'
              ),
            ),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
              },
              child: Text(
                "Donér",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      )
    );
  }
}