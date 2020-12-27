import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'aroAssignment.dart';
import 'nav_screen.dart';
import 'user_pull.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final signStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff914da0),
                Color(0xff6c4faa),
                Color(0xff6c4faa),
                Color(0xfffc06bec),
                Color(0xfff088f9)
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    topRight: Radius.circular(110),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff9b57a2),
                      Color(0xff6c4faa),
                      Color(0xff6c4faa)
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(180),
                            topRight: Radius.circular(180),
                          ),
                          gradient: LinearGradient(
                            colors: [Color(0xff6c4faa), Color(0xff6c4faa)],
                          ),
                        ),
                        child: Image.asset('assets/images/aero.png')),
                  ],
                ),
              ),
              Text(
                'aero',
                style: TextStyle(
                  fontFamily: 'assets/fonts/Ponppins',
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                'WELCOME TO AERO',
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'FAST | SECURE | TRUST',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 50.0),
              Container(
                width: 174.0,
                height: 68.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return AroAssignment();
                    }));
                  },
                  child: Text(
                    'Home',
                    style: signStyle,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                width: 174.0,
                height: 68.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(30)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return UserPull();
                    }));
                  },
                  child: Text(
                    'All Users',
                    style: signStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
