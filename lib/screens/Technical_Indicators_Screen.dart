import 'package:flutter/material.dart';

class TechnicalIndicatorsScreen extends StatefulWidget {
  static final screenID = 'Technical_Indicators_Screen';

  @override
  _TechnicalIndicatorsScreenState createState() => _TechnicalIndicatorsScreenState();
}

class _TechnicalIndicatorsScreenState extends State<TechnicalIndicatorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Text(
              'TechnicalIndicatorsScreen',
            ),
          ),
        ],
      ),
    );
  }
}
