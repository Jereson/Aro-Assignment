import 'package:aro/model/dummy_data.dart';
import 'package:aro/screen/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/aroAssignment.dart';
import 'screen/user_pull.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: DummyData())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aro Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: AroAssignment(),
        // home: UserPull(),
        home: WelcomeScreen(),
      ),
    );
  }
}
