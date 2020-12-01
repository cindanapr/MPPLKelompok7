import 'package:flutter/material.dart';
import 'package:mppl/screens/home/nav.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Color(0xffEEEEEE),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text("Profile", 
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ) ,
              ),
              Container(
                padding: 
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.width/2,

              )
            ]
          )
        ],
      )
    );
  }
}