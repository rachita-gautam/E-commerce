import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/screens/user_page.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/others/const.dart';
import 'package:e_commerce/others/roundButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

final _auth = FirebaseAuth.instance;
User _loggedInUser;
final _firestore = FirebaseFirestore.instance;

class LoginScreen extends StatefulWidget {
  static const String id = 'LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void getCurrentUser() {
    try {
      final myUser = auth.currentUser;
      if (myUser != null) {
        _loggedInUser = myUser;
      }
      print(_loggedInUser.email);
    } catch (e) {
      print(e);
    }
  }

  String userName;
  String email;
  String password;
  bool spinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPinkColor,
      body: ModalProgressHUD(
        inAsyncCall: spinner,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
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
                height: 8,
              ),
              TextField(
                keyboardType: TextInputType.name,
                textAlign: TextAlign.center,
                decoration: kButtonStyle.copyWith(hintText: "Enter Your Name"),
                onChanged: (value) {
                  userName = value;
                },
              ),
              SizedBox(
                height: 8,
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
                title: 'LogIn',
                colour: kVioletColor.withOpacity(0.5),
                onPressed: () {
                  setState(() {
                    spinner = true;
                  });
                  try {
                    var newUser = _auth.signInWithEmailAndPassword(
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
                  } catch (e) {
                    print(e);
                  }
                  _firestore
                      .collection("users")
                      .add({"email": email, "userName": userName});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
