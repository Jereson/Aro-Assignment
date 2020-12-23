import 'package:flutter/material.dart';

class HemispherWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Stack(
        children: <Widget>[
          Container(
            height: 210.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(180.0)),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(125, 127, 254, 1),
                  Color.fromRGBO(166, 116, 244, 1),
                  Color.fromRGBO(230, 110, 200, 1),
                  Color.fromRGBO(251, 120, 126, 1),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 170.0,
                    width: MediaQuery.of(context).size.width * 0.95,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(200.0)),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(118, 110, 232, 0.44),
                          Color.fromRGBO(161, 100, 227, 0.54),
                          Color.fromRGBO(200, 103, 174, 0.62),
                          Color.fromRGBO(213, 109, 130, 1),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .08,
                      ),
                      Container(
                        height: 120.0,
                        width: MediaQuery.of(context).size.width * 0.80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(200.0),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(101, 89, 198, 1),
                              Color.fromRGBO(154, 83, 199, 1),
                              Color.fromRGBO(170, 90, 142, 1),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
