import 'package:flutter/material.dart';

Widget menuBar() {
  return AppBar(
    centerTitle: true,
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "KeepThe",
          style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
        Text(
          "Spirit",
          style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
      ],
    ),
    backgroundColor: Color(0xff00D1FF),
  );
}