import 'package:flutter/material.dart';
import 'package:mppl/screens/home/home.dart';
import 'package:mppl/screens/home/message.dart';
import 'package:mppl/screens/home/profile.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}
 class _NavState extends State<Nav> {
    int _selectedIndex = 0;
    List<Widget> _widgetOptions = <Widget>[
      Home(),
      Message(),
      Profile(),
    ];

    void _onItemTap(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            title: Text('Message'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            title: Text('Profile'),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}