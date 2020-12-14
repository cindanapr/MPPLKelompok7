import 'package:flutter/material.dart';
import 'package:mppl/screens/authenticate/sign_in.dart';
import 'package:mppl/screens/authenticate/sign_up.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
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
        child: Stack( 
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 80,
              child: Text(
                'Curhat.in',
                style: TextStyle(
                  fontSize: 53.0,
                  color: Colors.white,
                  fontFamily: 'AdreenaScripts',
                ),
              ),
            ),
            Positioned(
              top: 190,
              child: 
              Text(
                'Aplikasi Konsultasi Online Berbasis',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.white,
                  fontFamily: 'Lato',
                ),
              ),
            ),
            Positioned(
              top: 210,
              child: Text(
                'Android untuk Mahasiswa IPB',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.white,
                  fontFamily: 'Lato',
                ),
              ),
            ),
            Image(image: AssetImage('assets/landingpage.png')),
            Positioned(
              bottom: 150,
              child: 
              Container(
                height: 42.0, width: 300.0,
                child: RaisedButton(
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                highlightElevation: 20.0,
                color: Colors.green[300],
                //padding: EdgeInsets.symmetric(horizontal:140.0),
                child: Container(
                  child: Text('Sign In',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white
                                )
                              )
                ),
                highlightColor: Colors.green[200],
                onPressed: toSignIn,
                ),
              ),
            ),
            Positioned(
              bottom: 90,
              child: 
              Container(
                height: 42.0, width: 300.0,
                child: RaisedButton(
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                highlightElevation: 20.0,
                color: Colors.green[300],
                //padding: EdgeInsets.symmetric(horizontal:140.0),
                child: Container(
                  child: Text('Sign Up',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white
                                )
                              )
                ),
                highlightColor: Colors.green[200],
                onPressed: toSignUp,
                ),
              ),
            )
          ]
        )
      )
    );
  }
  void toSignIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignIn()));
  }
  void toSignUp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUp()));
  }
}