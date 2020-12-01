import 'package:flutter/material.dart';
import 'package:mppl/screens/home/nav.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor : Color(0xffEEEEEE),
      body: Container(
        margin: EdgeInsets.all(20.0),
        height: size.height,
        width: double.infinity,
        child: 
        Stack(
          children: <Widget>[
            Positioned(
              top: 40,
              child: 
                Text( 'Psikoinfo',
                  style : TextStyle (
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    color: Colors.teal[300]
                  )
                ),
            ),
            const SizedBox(height: 16.0),
            Positioned(
              top: 100,
                child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0),
                          ),
                        image: DecorationImage(
                          image: AssetImage('assets/download.png'),
                          fit: BoxFit.cover,
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Penyebab Depresi pada Mahasiswa",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                    )
                  ],
                ),
              ),
            )
          ] 
        ) 
      )
    );
  }
}