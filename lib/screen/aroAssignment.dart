import 'package:aro/widgets/fullTop_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/hemispher_widgets.dart';
import '../widgets/button_widgets.dart';
import '../widgets/radius_widgets.dart';

class AroAssignment extends StatefulWidget {
  @override
  _AroAssignmentState createState() => _AroAssignmentState();
}

class _AroAssignmentState extends State<AroAssignment> {
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
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(80, 64, 163, 1),
              Color.fromRGBO(114, 79, 181, 1),
              Color.fromRGBO(170, 104, 212, 1),
              Color.fromRGBO(249, 143, 254, 1),
            ],
          ),
        ),
        child: Stack(
          children: <Widget>[
            //Hemispher widgets here
            HemispherWidgets(),

            //Full Top Radius
            fullTopWidget(context),

            //First Left Radius
            firstRadius(context),

            //Top Right Raduis
            topRight(context),

            //Bottom Left Radius
            bottoLeftRadius(context),

            //Bottom Right Radius
            buttomRight(context),

            //Icons widgest here
            ButtonWidgets(),
          ],
        ),
      ),
    );
  }
}
