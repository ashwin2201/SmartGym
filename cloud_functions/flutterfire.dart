import 'package:firebase_core/firebase_core.dart';
import '../lib/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> register(String email, String password) async {
  try {} on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

Future<void> login(String email, String passsword) async {}
