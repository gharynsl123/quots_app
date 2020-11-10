import 'package:flutter/material.dart';

Widget hidupBar() {
  return AppBar(
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90.0),
      child: Row(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Hidup",
            style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Quots",
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
    backgroundColor: Color(0xff00D1FF),
  );
}