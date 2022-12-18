import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smartgym/screens/home_screen.dart';
import 'package:smartgym/screens/login_screen.dart';
import 'package:smartgym/screens/signup_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SignupScreen(),
      //  '/verify': (context) => VerifyEmail(),
        '/sign-up': (context) => SignupScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => UserHome(),
      }
    );
  }
}