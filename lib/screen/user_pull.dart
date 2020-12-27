import 'package:aro/model/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class UserPull extends StatefulWidget {
  @override
  _UserPullState createState() => _UserPullState();
}

class _UserPullState extends State<UserPull> {
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
    final getData = Provider.of<DummyData>(context).dummyData;

    final fieldStyle = TextStyle(
        color: Colors.white,
        fontFamily: 'assets/fonts/Poppins',
        fontWeight: FontWeight.bold,
        fontSize: 14.0);

    final nameStyle = TextStyle(
        color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF5040A3),
              Color(0xFF724FB5),
              Color(0xFFF98FFE),
              Color(0xFFF98FFE)
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              alignment: Alignment.bottomCenter,
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Photo', style: fieldStyle),
                  Text('Name', style: fieldStyle),
                  Text('Send', style: fieldStyle),
                  Text('Receive', style: fieldStyle)
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: getData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        colors: [
                          //Dynmaically give the list view colors
                          index == 0 || index == 3 || index == 6
                              ? Color(0xFF6607AB)
                              //Second Row
                              : index == 1 || index == 4 || index == 7
                                  ? Color(0xFFFF9047)
                                  //Third Row
                                  : index == 2 || index == 5
                                      ? Color(0xFF0595F5)
                                      : Colors.transparent,

                          //Second Gradient COlors
                          index == 0 || index == 3 || index == 6
                              ? Color(0xFFD201FD)
                              //Second Row
                              : index == 1 || index == 4 || index == 7
                                  ? Color(0xFFFF4483)
                                  //Third Row
                                  : index == 2 || index == 5
                                      ? Color(0xFF2756E2)
                                      : Colors.transparent,
                        ],
                      ),
                    ),
                    height: 75,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 26.0,
                          ),
                          Text(
                            getData[index].name,
                            style: nameStyle,
                          ),
                          Image.asset(getData[index].sendIcon),
                          Image.asset(getData[index].receiveIcon)
                        ]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
