import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  const UserHome({ Key? key }) : super(key: key);

  @override
  UserHomeState createState() => UserHomeState();
}

class UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('On User Home page')
      )
    );
  }
}