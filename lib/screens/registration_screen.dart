import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/others/const.dart';
import 'package:e_commerce/others/roundButton.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main_screen.dart';

// final _firestore = FirebaseFirestore.instance;

class RegistrationScreen extends StatefulWidget {
  static const String id = 'RegistrationScreen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  bool spinner = false;
  String userName;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPinkColor,
      body: ModalProgressHUD(
        inAsyncCall: spinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset(
                    'images/logoIcon.png',
                  ),
                  height: 140.0,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration: kButtonStyle.copyWith(hintText: "Enter Your Email"),
                onChanged: (value) {
                  email = value;
                },
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                decoration:
                    kButtonStyle.copyWith(hintText: "Enter Your Password"),
                onChanged: (value) {
                  password = value;
                },
              ),
              SizedBox(
                height: 25,
              ),
              RoundButton(
                title: 'Register',
                colour: kVioletColor.withOpacity(0.5),
                onPressed: () async {
                  setState(() {
                    spinner = true;
                  });
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);

                    if (newUser != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                      );
                    }
                    setState(() {
                      spinner = false;
                    });
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
