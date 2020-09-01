import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marketwatchdog/screens/Rising_EPS.dart';
import 'package:marketwatchdog/services/stockAPI.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: size.height * .20),
                    height: 64,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //TODO: Add something up in this top colored header space
                        Text('Put a covid-19 stat. image carousel here'),
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
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/2422/2422792.svg',
                            screenID: RisingEPSScreen.screenID),
                        buildInkWell(
                            cardText: 'Weed Stocks',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3428/3428402.svg',
                            screenID: 'Weed Stocks screen'),
                        buildInkWell(
                            cardText: 'Falling EPS',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3121/3121773.svg',
                            screenID: 'falling eps screen'),
                        buildInkWell(
                            cardText: 'Resis/Supp',
                            iconHTTPLink: 'https://image.flaticon.com/icons/svg/3121/3121690.svg',
                            screenID: 'Resis/Supp'),
                        buildInkWell(
                            cardText: 'Agg. Indicators',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/2586/2586226.svg',
                            screenID: 'Agg. Indicators screen'),
                        buildInkWell(
                            cardText: 'Tech. Indicators',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/831/831273.svg',
                            screenID: 'Tech. Indicators screen'),
                        buildInkWell(
                            cardText: 'Rising EPS',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/2422/2422792.svg',
                            screenID: 'hello world'),
                        buildInkWell(
                            cardText: 'Weed Stocks',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3428/3428402.svg',
                            screenID: 'Weed Stocks screen'),
                        buildInkWell(
                            cardText: 'Falling EPS',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3121/3121773.svg',
                            screenID: 'falling eps screen'),
                        buildInkWell(
                            cardText: 'Falling EPS',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3121/3121773.svg',
                            screenID: 'falling eps screen'),
                        buildInkWell(
                            cardText: 'Falling EPS',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3121/3121773.svg',
                            screenID: 'falling eps screen'),
                        buildInkWell(
                            cardText: 'Falling EPS',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3121/3121773.svg',
                            screenID: 'falling eps screen'),
                        buildInkWell(
                            cardText: 'Falling EPS',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3121/3121773.svg',
                            screenID: 'falling eps screen'),
                        buildInkWell(
                            cardText: 'Falling EPS',
                            iconHTTPLink: 'https://image.flaticon'
                                '.com/icons/svg/3121/3121773.svg',
                            screenID: 'falling eps screen'),
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

  InkWell buildInkWell({String cardText, String iconHTTPLink, String screenID}) {
    final String iconText = cardText;
    final String iconLink = iconHTTPLink;
    final String nextScreen = screenID;

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
            SvgPicture.network(
              iconLink,
              height: 85,
            ),
            Text(iconText),
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
