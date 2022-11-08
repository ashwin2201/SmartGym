import 'dart:html';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        TextFormField(
          controller: _emailField,
          decoration: InputDecoration(
              hintText: "email@email.com",
              hintStyle: TextStyle(color: Colors.white),
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.white)),
        ),
        TextFormField(
          controller: _passwordField,
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Enter password",
              hintStyle: TextStyle(color: Colors.white),
              labelText: "Password",
              labelStyle: TextStyle(color: Colors.white)),
        ),
        Container(
          width: MediaQuery.of(context).size.width/1.4,
          height: 45,
          child: FloatingActionButton.extended(onPressed: (){}, label: Text("Submit"), icon: Icon(Icons.add), foregroundColor: Colors.white,)
        ), 
        Container(
          width: MediaQuery.of(context).size.width/1.4,
          height: 45,
          child: FloatingActionButton.extended(onPressed: (){}, label: Text("Login"), icon: Icon(Icons.login),)
        )
      ]),
    ));
  }
}
