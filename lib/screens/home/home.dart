import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text( 'Mau curhat ke siapa kak?',
          style : TextStyle (
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF)
          )
        ) 
      )
    );
  }
}