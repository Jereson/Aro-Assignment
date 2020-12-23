import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget fullTopWidget(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.height * .10,
    right: MediaQuery.of(context).size.width * .3,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60.0),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.centerLeft,
              colors: [
                Color(0xFFD67AE7),
                Color(0xFF6943AC),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 9),
          height: 24.0,
          width: 24.0,
          decoration: BoxDecoration(
            color: Color(0xFF3A3091),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Icon(Icons.add, size: 20, color: Colors.white),
        ),
      ],
    ),
  );
}
