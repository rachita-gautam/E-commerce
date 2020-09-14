import 'package:e_commerce/others/const.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
User _loggedInUser;
final _firestore = FirebaseFirestore.instance;

class MyUserProfile extends StatefulWidget {
  @override
  _MyUserProfileState createState() => _MyUserProfileState();
}

class _MyUserProfileState extends State<MyUserProfile> {
  String userName;
  String email;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        title: Text(
          "My Profile",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
//                fontFamily: 'Pacifico',
//                  fontStyle: FontStyle.italic,
              fontSize: 25),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0XFF2e1763), Color(0xffffbdf7)])),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 100,
              child: Icon(
                FontAwesomeIcons.user,
                size: 120,
              ),
            ),
            SizedBox(
              height: 20,
              child: Divider(
                thickness: 1.25,
                height: 275,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              keyboardType: TextInputType.name,
              // decoration: kButtonStyle.copyWith(hintText: "User Name"),
              onChanged: (value) {
                userName = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              // decoration: kButtonStyle.copyWith(hintText: "User Name"),
              onChanged: (value) {
                email = value;
              },
            ),
            // FlatButton(
            //     onPressed: () {
            //       _firestore
            //           .collection("users")
            //           .add({"email": email, "userName": userName});
            //     },
            //     child: Text("Update"))
          ],
        ),
      ),
    );
  }
}
