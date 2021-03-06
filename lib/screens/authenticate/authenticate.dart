import 'package:flutter/material.dart';
import 'package:la_hacks/screens/authenticate/register.dart';
import 'package:la_hacks/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Authenticate> {

  bool showSignIn = true;

  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }
  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
