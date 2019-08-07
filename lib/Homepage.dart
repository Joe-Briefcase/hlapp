import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState () => new _HomepageState();
}

class _HomepageState extends State<Homepage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
            title: new Center(child:
              new Text("Agape", style: TextStyle(color: Colors.yellow),)),
            backgroundColor: Colors.black54,
    ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child:
                  new RaisedButton(
                    child:
                    Text('Donér penge'),
                    textColor: Colors.yellow,
                    color: Colors.black54,
                    padding: const EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
                    onPressed: () => Navigator.pushNamed(context, 'donate'),
                  ),
                ),
                new Container(
                  child:
                    new RaisedButton(
                      child:
                      Text('Om os'),
                      textColor: Colors.yellow,
                      color: Colors.black54,
                      padding: const EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
                      onPressed: () => Navigator.pushNamed(context, 'about'),
                    )
                ),
                new Container(
                  child:
                  new RaisedButton(
                      child:
                      Text('log ud'),
                      textColor: Colors.yellow,
                      color: Colors.black54,
                      padding: const EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
                      onPressed: () => Navigator.pushNamed(context, 'login')
                  ),
                )
              ],
        ),
      )
    );
  }
}