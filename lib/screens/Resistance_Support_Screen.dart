import 'package:flutter/material.dart';

class ResistanceSupportScreen extends StatefulWidget {
  static final screenID = 'Resistance_Support_Screen';

  @override
  _ResistanceSupportScreenState createState() => _ResistanceSupportScreenState();
}

class _ResistanceSupportScreenState extends State<ResistanceSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Text(
              'Resistance Support Screen',
            ),
          ),
        ],
      ),
    );
  }
}
