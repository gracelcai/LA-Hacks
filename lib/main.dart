import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:la_hacks/screens/wrapper.dart';
import 'package:la_hacks/services/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
