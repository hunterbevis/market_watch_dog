import 'package:flutter/material.dart';

class FallingEPSScreen extends StatefulWidget {
  static final screenID = 'Falling_EPS_Screen';

  @override
  _FallingEPSScreenState createState() => _FallingEPSScreenState();
}

class _FallingEPSScreenState extends State<FallingEPSScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Text(
              'falling eps screen',
            ),
          ),
        ],
      ),
    );
  }
}
