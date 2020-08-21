import 'package:flutter/material.dart';
import 'package:marketwatchdog/components/stockCard.dart';
import 'package:marketwatchdog/services/stockAPI.dart';

class HomeScreen extends StatefulWidget {
  // This widget is the root of your application.
  static final screenID = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    print("get data called");
    getData('AAPL');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Market Watch Dog',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreenContents(title: 'Market Charts'),
    );
  }
}

class HomeScreenContents extends StatefulWidget {
  HomeScreenContents({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenContentsState createState() => _HomeScreenContentsState();
}

class _HomeScreenContentsState extends State<HomeScreenContents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StockCard(
                stockTicker: "Apple",
              ),
              StockCard(
                stockTicker: "ticker 2",
              ),
              StockCard(
                stockTicker: "ticker 3",
              ),
              StockCard(
                stockTicker: "ticker 4",
              ),
              StockCard(
                stockTicker: "ticker 5",
              ),
            ],
          ),
        ],
      )),
    );
  }
}
