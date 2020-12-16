import 'package:flutter/material.dart';
import 'package:mppl/screens/home/nav.dart';
import 'package:mppl/screens/home/article.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor : Color(0xffEEEEEE),
      body: Container(
        padding: EdgeInsets.all(20.0),
        height: size.height,
        width: double.infinity,
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
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
            
            Container( 
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Article(),
                    ),
                  );
                },
                    child: Card(
                    elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            //topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0),
                            ),
                          image: DecorationImage(
                            image: AssetImage('assets/landingpage.png'),
                            fit: BoxFit.cover,
                            )
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Expanded(
                        child: Text("Penyebab Depresi pada Mahasiswa",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )
                        ),
                        )
                      )
                    ],
                  ),
              ),
                ),
              )
            
          ] 
        ) 
      )
    );
  }
}