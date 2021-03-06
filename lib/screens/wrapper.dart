import 'package:flutter/material.dart';
import 'package:mppl/screens/home/home.dart';
import 'package:mppl/screens/authenticate/authenticate.dart';
import 'package:mppl/screens/authenticate/sign_in.dart';
import 'package:mppl/screens/authenticate/sign_up.dart';
import 'package:mppl/screens/home/profile.dart';
import 'package:provider/provider.dart';
import 'package:mppl/models/user.dart';
import 'package:mppl/screens/home/nav.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    // return either Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Nav();
    }
  }
}
