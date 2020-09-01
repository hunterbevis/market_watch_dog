import 'package:flutter/material.dart';

class RisingEPSScreen extends StatefulWidget {
  static final screenID = 'Rising_EPS_Screen';

  @override
  _RisingEPSScreenState createState() => _RisingEPSScreenState();
}

class _RisingEPSScreenState extends State<RisingEPSScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Text(
              'rising eps screen',
            ),
          ),
        ],
      ),
    );
  }
}
