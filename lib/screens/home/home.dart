import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.grey[50],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: ('Home'), 
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: ('Message'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: ('Profile'),
          )
        ],
        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //   });
        // },
      ),
      body: Center(
        child: Text( 'Psikoinfo',
          style : TextStyle (
            fontSize: 34,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
            //color: Color(0xFFFFFFFF)
          )
        ) 
      )
    );
  }
}