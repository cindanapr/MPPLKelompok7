import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

bool _secureText = true;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
       margin: EdgeInsets.all(20.0),
        //width: double.infinity,
        //child: Column(mainAxisAlignment: MainAxisAlignment.center,
         //children: [
           //Stack(
            //Positioned(
                //child:
                  Padding(
                    padding: 
                    EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                    child:
                      Text(
                        'Hello',
                        style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.teal[200],
                        fontFamily: 'Lato',
                        )
                      ),
                  ),
                
                
                  Padding(
                  child:
                  Align(alignment: Alignment(0.00, -1.00),
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
                ),
                
                
  
                  Container (
                    height: 48.0, width: 344.0,
                    child:
                      Align(alignment : Alignment(0.00, -1.00),
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
                
                 
                
                  Container( height:48.0, width: 344.0,
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
                // SizedBox(
                //   height : 12.0
                // ),
                
                  Container (
                  height: 48.0, width: 344.0, 
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
            // SizedBox(
            //   height : 12.0
            // ),    
                ),

                
                  Container(
                    height: 48.0, width: 344.0,
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
                        //border: OutlineInputBorder(),  
                      ),
                      obscureText: _secureText,
                    ),
                  ),
                  // SizedBox(
                  //   height : 24.0
                  // ),    
                ),
                
                  Container(
                    height: 48.0, width: 344.0,
                    child:
                    Align(alignment: Alignment(0.00, 1.00),
                    child:
                    RaisedButton(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      highlightElevation: 20.0,
                      color: Colors.teal[300],
                      padding: EdgeInsets.symmetric(horizontal:140.0, vertical: 15.0),
                      child: Container(
                      child: Text('Sign Up',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.white
                              )
                            )
                      ),
                      highlightColor: Colors.green[200],
                      onPressed: (){},
                    ),
                  ),
                  ),
      ),
    );  
      
    
  }
}