import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // signup user
  Future<String> signUpUser({
    required String email,
    password,
    username,
    bio,
    // required Uint8List file,
  }) async {
    String res = "Some Error Occured";
    try {
      if (email.isNotEmpty ||
              password.isNotEmpty ||
              username.isNotEmpty ||
              bio.isNotEmpty
          // || file != null
          ) {
        //register the user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        print(cred.user!.uid);
        //add user to database
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'email': email,
          'uid': cred.user!.uid,
          'username': username,
          'bio': bio,
          'followers': [],
          'following': [],
        });

        //
        // await _firestore.collection('users').add({
        //   'email': email,
        //   'uid': cred.user!.uid,
        //   'username': username,
        //   'bio': bio,
        //   'followers': [],
        //   'following': [],
        // });

        res = "Success";
      }
    } catch (error) {
      res = error.toString();
    }
    return res;
  }
}
