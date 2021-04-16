import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoTextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black, fontSize: 15),
              placeholder: 'Email',
              placeholderStyle: TextStyle(color: Colors.black38),
             ),
             CupertinoTextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black, fontSize: 15),
              placeholder: 'Password',
              placeholderStyle: TextStyle(color: Colors.black38),
             ),
          ],
        ),
      ),
    );
  }
}
