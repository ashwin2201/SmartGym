import 'package:flutter/material.dart';
import 'package:smartgym/screens/home.dart';
import 'package:smartgym/screens/tester.dart';
import 'package:smartgym/screens/user_details.dart';
import '../cloud_functions/flutterfire.dart';

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
        color: Colors.lightBlue,
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
            width: MediaQuery.of(context).size.width / 1.4,
            height: 45,
            child: FloatingActionButton.extended(
              heroTag: "btn1",
              onPressed: () async {
                bool isRegistered =
                    await register(_emailField.text, _passwordField.text);
                if (isRegistered) {
                  print('Registered1');
                  // Navigate to the user details page
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserDetails()));
                } else {
                  print('Not registered');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }
              },
              label: Text("Register"),
              icon: Icon(Icons.add),
              foregroundColor: Colors.white,
            )),
        Text("Already have an account?"),
        Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: 45,
            child: FloatingActionButton.extended(
              heroTag: "btn2",
              onPressed: () async {
                bool isSignedIn =
                    await login(_emailField.text, _passwordField.text);
                bool userDetailsComplete = false;
                bool isRegistered =
                    await register(_emailField.text, _passwordField.text);

                if (isSignedIn && userDetailsComplete) {
                  print('Signed in');
                  // Navigate to the users personal home page
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserHome()));
                } else if (!isRegistered) {
                  print('Not registered');
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }
              },
              label: Text("Login"),
              icon: Icon(Icons.login),
            ))
      ]),
    ));
  }
}
