import 'package:flutter/material.dart';
import 'package:mppl/services/auth.dart';
import 'package:mppl/screens/authenticate/sign_in.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

bool _secureText = true;

class _SignUpState extends State<SignUp> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  // text field state
  String email ='';
  String password ='';
  String error = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30.0),
        height: size.height,
        width: double.infinity,
        //mainAxisAlignment: MainAxisAlignment.center,
        child: SingleChildScrollView(
                  child: Column(
            //alignment: Alignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 100.0),
                //top:120,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.teal[200],
                    fontFamily: 'Lato',
                  )
                ),
              ),
              
              Form(
                key: _formKey,
                child: Column(
                children: [
              //Positioned(
                //top: 260,

                Padding(
                    padding: EdgeInsets.only(top: 60),
                  ),
                Container(
                  height: 48.0, width: 320.0,
                  padding: EdgeInsets.only(top: 0),
                  child: TextFormField(
                    validator: (val) => val.isEmpty ? 'Enter your email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                    },
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
                
              //),
              // SizedBox(
              //   height : 12.0
              // ),
              //Positioned(
              //  top: 320,
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Container(
                    height:48.0, width: 320.0,
                  child: TextFormField(
                    validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
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
                          _secureText ? Icons.remove_red_eye : Icons.security),
                        onPressed: () {
                          setState(() {
                            _secureText = !_secureText;
                          }
                          );
                        }
                      )
                      //border: OutlineInputBorder(),  
                    ),
                    //},
                    obscureText: _secureText,
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                    error,
                    style : TextStyle(
                      color: Colors.red, 
                      fontSize: 14.0,
                      fontFamily: 'Lato',
                    )
                  ),
              
              // SizedBox(
              //   height : 24.0
              // ),
              //Positioned(
                //bottom: 220,
                SizedBox(
                 height : 40.0
               ),
                  Container(
                  height: 48.0, width: 320.0,
                  child: 
                  RaisedButton(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                  highlightElevation: 20.0,
                  color: Colors.teal[300],
                  padding: EdgeInsets.symmetric(horizontal:14.0, vertical: 15.0),
                  child: Container(
                    child: Text('Sign Up',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.white
                                  )
                                )
                  ),
                  highlightColor: Colors.green[200],
                  onPressed: () async {
                    if (_formKey.currentState.validate()){
                      dynamic result = await _auth.register(email, password);
                      if(result == null){
                        setState(() => error = 'please input a valid email');
                      }
                    }
                  },
                  ),
                ),
                //SizedBox(height: 12.0),
                  
                Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'or Sign In',
                      style: TextStyle(fontFamily: 'Lato'),
                    ),
                    SizedBox(width: 5.0),
                    InkWell(
                      onTap: toSignIn,
                      child : Text('Here',
                      style: TextStyle(
                        color: Colors.teal[300],
                        fontFamily: 'Lato',
                        decoration: TextDecoration.underline
                      )
                      )
                    )
                  ],
                )
              //)
              ]
              )
              )
            ]
          ),
        )
      )
    );
  }
  void toSignIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignIn()));
  }
}