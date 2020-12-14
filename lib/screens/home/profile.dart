import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mppl/screens/home/nav.dart';
import 'package:mppl/services/auth.dart';
import 'package:mppl/services/auth.dart';

class Profile extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor : Color(0xffEEEEEE),
      body: 
      Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),

          Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 60.0),
              alignment: Alignment.center,
              child: 
                Text( 'Profile',
                  style : TextStyle (
                    fontSize: 34,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    color: Colors.white
                  )
                ),
            ),
            SizedBox(width: size.width, height: size.height / 20),
            Center(
              child:
            Container( 
                padding: EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5.0),
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:  AssetImage('assets/profile.png'),
                    ) 
                ),
              ),
            ),
          ] 
          ),

          Padding(padding: EdgeInsets.only(bottom: 120, left: size.width/3),
          child: CircleAvatar(
            backgroundColor: Colors.black54,
            child: IconButton(icon: Icon(Icons.edit, color: Colors.white, ), onPressed: (){})
            ),
            ),

          Positioned(
            bottom: 50,
            child: Container(
              height: 48.0, width: 320.0,
              child: 
              RaisedButton(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0), 
                ),
                highlightElevation: 20.0,
                color: Colors.teal[300],
                padding: EdgeInsets.symmetric(horizontal:14.0, vertical: 15.0),
                child: Container(
                  child: Text('Sign Out',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white
                    )
                  )
                ),
                highlightColor: Colors.green[200],
                onPressed: () async {
                  await _auth.signOut();
                },
              ),
            ),
          )
        ]
        )
      );
  }
}

class HeaderCurvedContainer extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size){
    Paint paint = Paint()..color=Colors.teal[300];
    Path path=Path()
    ..relativeLineTo(0, 150)
    ..quadraticBezierTo(size.width/2, 300, size.width, 150)
    ..relativeLineTo(0, -150)
    ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate)=>false;
}