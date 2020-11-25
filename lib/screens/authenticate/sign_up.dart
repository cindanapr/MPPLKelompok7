import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

bool _secureText = true;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
      //resizeToAvoidBottomPadding: false,
       margin: EdgeInsets.all(20.0),
       height: size.height,
       width: double.infinity,
        //child: Column(mainAxisAlignment: MainAxisAlignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 120,
              
                child:
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.teal[200],
                      fontFamily: 'Lato',
                      )
                    )
            ),
            Positioned(
              top: 180,
              child:
                Text(
                  'Signup first to continue',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Lato',
                    ),
                  ),
            ),
            Positioned(
              top: 260,
              left:0,
              child:
                Container (
                  height: 48.0, width: 320.0,
                    child:
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal[200]),
                            borderRadius: BorderRadius.all(Radius.circular(30.0))
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(30.0))
                          ),
                          //hintText: 'Email Anda',
                          labelText: 'Nama',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          //border: OutlineInputBorder(),
                          fillColor: Colors.black12,
                          filled: true,
                        ),
                      ),
                ),
            ),
                //  SizedBox(
                //    height : 12.0
                //  ),
            
            Positioned(
              top:320,
              left:0,
              child: 
                Container( height:48.0, width: 320.0,
                  child:
                    Align(alignment: Alignment(0.00, 1.00),
                      child:
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal[200]),
                              borderRadius: BorderRadius.all(Radius.circular(30.0))
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.all(Radius.circular(30.0))
                            ),
                            //hintText: 'Email Anda',
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            //border: OutlineInputBorder(),
                            fillColor: Colors.black12,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
            ),
                // SizedBox(
                //   height : 12.0
                // ),
                
            Positioned(
              top:380,
              left:0,
              child: 
                Container (
                  height: 48.0, width: 320.0, 
                  child:
                    Align(alignment: Alignment(0.00, 1.00),
                    child:
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal[200]),
                          borderRadius: BorderRadius.all(Radius.circular(30.0))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(30.0))
                        ),
                        //hintText: 'Email Anda',
                        labelText: 'Password',
                        labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        ),
                        fillColor: Colors.black12,
                        filled: true,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _secureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
                            onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            }
                            );
                            }
                          )
                        //border: OutlineInputBorder(),  
                      ),
                        obscureText: _secureText,
                    ),
                  ),
                ),
            ),
            // SizedBox(
            //   height : 12.0
            // ),      
            Positioned(
              top: 440,
              left:0,
              child: 
                Container(
                  height: 48.0, width: 320.0,
                  child:
                    Align(alignment: Alignment(0.00, 1.00),
                      child:
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal[200]),
                            borderRadius: BorderRadius.all(Radius.circular(30.0))
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.all(Radius.circular(30.0))
                          ),
                          //hintText: 'Email Anda',
                          labelText: 'Repeat Password',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          fillColor: Colors.black12,
                          filled: true,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _secureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
                              onPressed: () {
                              setState(() {
                              _secureText = !_secureText;
                              }
                              );
                              }
                            )
                          ),
                          //border: OutlineInputBorder(), 
                          obscureText: _secureText, 
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height : 24.0
                    // ),    
                ),
            
                
            Positioned(
              bottom:100,
              left:0,
              child: 
                Container(
                  height: 48.0, width: 320.0,
                    child:
                      RaisedButton(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                        highlightElevation: 20.0,
                        color: Colors.teal[300],
                        padding: EdgeInsets.symmetric(horizontal:140.0, vertical: 15.0),
                        
                        child: Text('Sign Up',
                                style: TextStyle(
                                  fontSize: 11.0,
                                  color: Colors.white
                                )
                              ),
                        
                        highlightColor: Colors.green[200],
                        onPressed: (){},
                      ),
                ),
            ),
          ]
        )
    ) 
  ); 
  }
}