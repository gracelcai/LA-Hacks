import 'package:flutter/material.dart';
import 'package:la_hacks/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }
}
