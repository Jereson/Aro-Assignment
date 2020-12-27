import 'package:aro/screen/nav_screen.dart';
import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NavScreen();
                }));
              },
              child: Container(
                padding: EdgeInsets.only(top: 8),
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/profile_icon.png'),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'assets/fonts/Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5BA3EF),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NavScreen();
                }));
              },
              child: Container(
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/bank_icon.png'),
                    SizedBox(height: 8.0),
                    Text(
                      'Bank',
                      style: TextStyle(
                        fontFamily: 'assets/fonts/Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7078FA),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NavScreen();
                }));
              },
              child: Container(
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/green_icon.png'),
                    SizedBox(height: 8.0),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'assets/fonts/Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF49C48B),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NavScreen();
                }));
              },
              child: Container(
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/icon.png'),
                    SizedBox(height: 8.0),
                    Text(
                      'Receive',
                      style: TextStyle(
                        fontFamily: 'assets/fonts/Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFEF625B),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NavScreen();
                }));
              },
              child: Container(
                height: 90.0,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/favorite.png'),
                    SizedBox(height: 7.0),
                    Text(
                      'Friends',
                      style: TextStyle(
                        fontFamily: 'assets/fonts/Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD3F9D),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NavScreen();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'More',
                      style: TextStyle(
                        fontFamily: 'assets/fonts/Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * .1,
        ),
      ],
    );
  }
}
