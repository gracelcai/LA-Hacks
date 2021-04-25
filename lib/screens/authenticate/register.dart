import 'package:flutter/material.dart';
import 'package:la_hacks/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          elevation: 0.0,
          title: Text('Sign up to Healthical'),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  widget.toggleView();
                },
                icon: Icon(Icons.person),
                label: Text('Sign in'))
          ],
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
                child: Column(children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(onChanged: (val) {
                setState(() => email = val);
              }),
              SizedBox(height: 20.0),
              TextFormField(
                  obscureText: true,
                  onChanged: (val) {
                    setState(() => password = val);
                  }),
              SizedBox(height: 20.0),
              RaisedButton(
                  color: Colors.red[400],
                  child:
                      Text('Register', style: TextStyle(color: Colors.white)),
                  onPressed: () async {
                    print(email);
                    print(password);
                  })
            ]))));
  }
}