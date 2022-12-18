import 'dart:typed_data';
import 'package:smartgym/resources/storage_methods.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // sign up user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String name,
    required Uint8List file
  }) async {
    String res = "Some error occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty || name.isNotEmpty) {
        // register user

        UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
        if (cred.user != null){
          cred.user?.sendEmailVerification();
        }
        String photoUrl = await StorageMethods().uploadImageToStorage('profilePics', file, false);
        // add user to database
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'uid': cred.user!.uid,
          'email': email,
          'name': name,
          'friends': [],
          'points': 0,
          'photoUrl': photoUrl,
          //  'displayName':name
        });

        res = "success";
      }
    } on FirebaseAuthException catch(e) {
      if (e.code == 'invalid-email') {
        res = 'The email is badly formatted';
      } else if (e.code == 'weak-password') {
        res = 'Password should be at least 6 characters';
      }
    }
    catch (e) {
      res = 'Not working properly';
    }
    return res;
  }

  // log in user

  Future<String> loginUser ({required String email, required String password, bool? verify}) async {
    String res = "Some error occured";

    try {
      if (email.isEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        verify = _auth.currentUser!.emailVerified;
        res = "success";
      } else {
        res = "Please enter all fields";
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}