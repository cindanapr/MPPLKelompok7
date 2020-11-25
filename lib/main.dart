import 'package:flutter/material.dart';
import 'package:mppl/screens/wrapper.dart';
import 'package:mppl/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:mppl/models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
        value: AuthService().user,
        child: MaterialApp(
          home: Wrapper(),
      ),
    );
  }
}

