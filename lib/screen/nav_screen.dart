import 'package:aro/screen/aroAssignment.dart';
import 'package:aro/screen/user_pull.dart';
import 'package:aro/screen/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
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
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    );
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: 174.0,
            height: 68.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(30),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return WelcomeScreen();
                }));
              },
              child: Text(
                'Welcome',
                style: signStyle,
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            alignment: Alignment.center,
            width: 174.0,
            height: 68.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
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
          SizedBox(
            height: 50.0,
          ),
          Container(
            alignment: Alignment.center,
            width: 174.0,
            height: 68.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(30),
            ),
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
    ));
  }
}
