import 'package:flutter/material.dart';
import 'package:mppl/screens/home/home.dart';
import 'package:mppl/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // return either Home or Authenticate widget
    return Authenticate();
  }
}