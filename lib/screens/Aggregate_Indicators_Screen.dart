import 'package:flutter/material.dart';

class AggregateIndicatorsScreen extends StatefulWidget {
  static final screenID = 'Aggregate_Indicators_Screen';

  @override
  _AggregateIndicatorsScreenState createState() => _AggregateIndicatorsScreenState();
}

class _AggregateIndicatorsScreenState extends State<AggregateIndicatorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Text(
              'Aggregate Indicators Screen',
            ),
          ),
        ],
      ),
    );
  }
}
