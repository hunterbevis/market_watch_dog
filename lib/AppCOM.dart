import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';

//This is the App's Center of Command (aka COM)!
//Just define routes here and control initial route

class AppCOM extends StatefulWidget {
  @override
  _AppCOMState createState() => _AppCOMState();
}

class _AppCOMState extends State<AppCOM> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.screenID,
      routes: {
        HomeScreen.screenID: (context) => HomeScreen(),
      },
    );
  }
}
