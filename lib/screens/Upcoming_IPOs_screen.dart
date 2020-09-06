import 'package:flutter/material.dart';

class UpcomingIPOsScreen extends StatefulWidget {
  static final screenID = 'Upcoming_IPOs_Screen';

  @override
  _UpcomingIPOsScreenState createState() => _UpcomingIPOsScreenState();
}

class _UpcomingIPOsScreenState extends State<UpcomingIPOsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Text(
              'Upcoming_IPOs_Screen',
            ),
          ),
        ],
      ),
    );
  }
}
