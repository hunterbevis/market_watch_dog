import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marketwatchdog/services/stockAPI.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

//Screen Imports For Navigation
import 'package:marketwatchdog/screens/Rising_EPS_Screen.dart';
import 'package:marketwatchdog/screens/Falling_EPS_Screen.dart';
import 'package:marketwatchdog/screens/Resistance_Support_Screen.dart';
import 'package:marketwatchdog/screens/Aggregate_Indicators_Screen.dart';
import 'package:marketwatchdog/screens/Technical_Indicators_Screen.dart';
import 'package:marketwatchdog/screens/Upcoming_IPOs_screen.dart';

class HomeScreen extends StatefulWidget {
  // This widget is the root of your application.
  static final screenID = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List cardList = [Item1(), Item2(), Item3(), Item4()];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                fit: BoxFit.fill,
                image: AssetImage('assets/images/green_to_orange_gradient_background.jpg'),
              ),
            ),
            child: Column(
              children: <Widget>[
                CarouselSlider(
                  height: 147.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 1200),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: Duration(seconds: 10),
                  aspectRatio: 2.0,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  items: cardList.map((card) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          color: Colors.blueAccent,
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: 7.5,
                      height: 7.5,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: size.height * .20),
                    height: size.height * .1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //TODO: Add something up in this top colored header space
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      children: <Widget>[
                        buildInkWell(
                            cardText: 'Rising EPS',
                            mediaSize: size,
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/2422/2422792.svg',
                            screenID: RisingEPSScreen.screenID),
                        buildInkWell(
                            cardText: "Upcoming IPO's",
                            mediaSize: size,
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3428/3428402.svg',
                            screenID: UpcomingIPOsScreen.screenID),
                        buildInkWell(
                            cardText: 'Falling EPS',
                            mediaSize: size,
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3121/3121773.svg',
                            screenID: FallingEPSScreen.screenID),
                        buildInkWell(
                            cardText: 'Resis/Supp',
                            mediaSize: size,
                            iconHTTPLink: 'https://image.flaticon.com/icons/svg/3121/3121690.svg',
                            screenID: ResistanceSupportScreen.screenID),
                        buildInkWell(
                            cardText: 'Agg. Indicators',
                            mediaSize: size,
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/2586/2586226.svg',
                            screenID: AggregateIndicatorsScreen.screenID),
                        buildInkWell(
                            cardText: 'Tech. Indicators',
                            mediaSize: size,
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/831/831273.svg',
                            screenID: TechnicalIndicatorsScreen.screenID),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ); //end scaffold
  }

  InkWell buildInkWell({String cardText, String iconHTTPLink, String screenID, Size mediaSize}) {
    final String iconText = cardText;
    final String iconLink = iconHTTPLink;
    final String nextScreen = screenID;
    final double screenSize = mediaSize.height;

    return InkWell(
      splashColor: Colors.grey,
      highlightColor: Colors.grey,
      onTap: () {
        setState(() {
          print(nextScreen);
          Navigator.pushNamed(context, nextScreen);
        });
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: SvgPicture.network(
                iconLink,
                height: screenSize * .10,
              ),
            ),
            FittedBox(
              child: Text(
                iconText,
                style: TextStyle(fontSize: screenSize * .025),
              ),
            ),
          ],
        ),
      ),
    );
  } //end of build
} //end of extends class

/*
    print("get data called");
    StockProfile Apple = new StockProfile('AAPL');
    print(Apple.openPrice);
    StockFinancials test = StockFinancials('AAPL');
    test.getData('AAPL');
 */
class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, stops: [
          0.3,
          1
        ], colors: [
          Color(0xffff4000),
          Color(0xffffcc66),
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Data", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold)),
          Text("Data", style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Data", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold)),
          Text("Data", style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, stops: [
          0.3,
          1
        ], colors: [
          Color(0xffff4000),
          Color(0xffffcc66),
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Data", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold)),
          Text("Data", style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Data", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold)),
          Text("Data", style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
