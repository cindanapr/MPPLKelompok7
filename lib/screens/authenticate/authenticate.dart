import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
            Colors.green[100],
            Colors.teal[200],
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )
        ),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Curhat.in',
              style: TextStyle(
                fontSize: 53.0,
                color: Colors.white,
                fontFamily: 'AdreenaScripts',
              ),
            ),
            RaisedButton(
            elevation: 5.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
            highlightElevation: 20.0,
            color: Colors.green[300],
            padding: EdgeInsets.symmetric(horizontal:140.0),
            child: Container(
              child: Text('Sign In',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white
                            )
                          )
            ),
            highlightColor: Colors.green[200],
            onPressed: (){},
            )
          ]
        )
      )
    );
  }
}