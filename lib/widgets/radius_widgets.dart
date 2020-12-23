import 'package:flutter/material.dart';

Widget firstRadius(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.height * .32,
    child: Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff7a4faa),
            spreadRadius: 4,
            blurRadius: 3,
            // offset: Offset(3, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(40.0),
        gradient: RadialGradient(colors: [
          Color.fromRGBO(151, 93, 170, 0.6),
          Color.fromRGBO(151, 88, 191, 0.6),
        ], stops: [
          0.9,
          0.5
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 62.0,
            width: 62.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34.0),
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(214, 102, 196, 0.9),
                  Color.fromRGBO(213, 108, 148, 0.9),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(34.0),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(214, 102, 196, 0.9),
                        Color.fromRGBO(213, 108, 148, 0.9),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget topRight(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.height * .38,
    right: 2.0,
    child: Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        gradient: RadialGradient(colors: [
          Color(0xFF7E60DA).withOpacity(0.6),
          Color(0xFF7E60DA).withOpacity(0.6),
        ], stops: [
          0.95,
          0.1
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 62.0,
            width: 62.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34.0),
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(174, 109, 227, 0.9),
                  Color.fromRGBO(136, 111, 230, 0.9),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(34.0),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF9578FA).withOpacity(1),
                        Color(0xFFC46DEF).withOpacity(0.8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget bottoLeftRadius(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.height * .66,
    child: Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        gradient: RadialGradient(
          colors: [
            Color(0xFFC24BF6).withOpacity(0.6),
            Color(0xFFB850E5).withOpacity(0.6),
          ],
          stops: [0.9, 0.5],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 62.0,
            width: 62.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34.0),
              gradient: RadialGradient(
                colors: [
                  Color(0xFFBF18FC).withOpacity(0.9),
                  Color(0xFFA521F4).withOpacity(0.9),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(34.0),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFF8F02FF).withOpacity(0.9),
                        Color(0xFFBA02FF).withOpacity(0.9),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buttomRight(BuildContext context) {
  return Positioned(
    bottom: MediaQuery.of(context).size.height * .10,
    right: 2.0,
    child: Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        gradient: RadialGradient(colors: [
          Color(0xFFE579B3).withOpacity(0.6),
          Color(0xFFE579B3).withOpacity(0.6),
        ], stops: [
          0.9,
          0.1
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 62.0,
            width: 62.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34.0),
              gradient: RadialGradient(
                colors: [
                  Color(0xFFEE69A4).withOpacity(1),
                  Color(0xFFE579B3).withOpacity(1),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(34.0),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFFE321C1).withOpacity(1),
                        Color(0xFFF9667C).withOpacity(0.8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
