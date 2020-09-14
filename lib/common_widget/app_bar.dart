import 'package:flutter/material.dart';

Widget appBarWidget(context) {
  return AppBar(
    centerTitle: true,
    elevation: 5,
    title: Text(
      "Let's Bake",
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
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
  );
}

//    leading: IconButton(
//      icon: Icon(
//        Icons.list,
//        color: Colors.white,
//        size: 40.0,
//      ),
//      onPressed: () {
//        setState();
//      },
//    ),
