import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';
import 'screens/Rising_EPS_Screen.dart';
import 'screens/Falling_EPS_Screen.dart';
import 'screens/Resistance_Support_Screen.dart';
import 'screens/Aggregate_Indicators_Screen.dart';
import 'screens/Technical_Indicators_Screen.dart';

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
        RisingEPSScreen.screenID: (context) => RisingEPSScreen(),
        FallingEPSScreen.screenID: (context) => FallingEPSScreen(),
        ResistanceSupportScreen.screenID: (context) => ResistanceSupportScreen(),
        AggregateIndicatorsScreen.screenID: (context) => AggregateIndicatorsScreen(),
        TechnicalIndicatorsScreen.screenID: (context) => TechnicalIndicatorsScreen(),
      },
    );
  }
}
