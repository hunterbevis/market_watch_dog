import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:marketwatchdog/utilities/constants.dart' as APIKey;

String myAPIKey = APIKey.myAPIKey;

class StockProfile {
  //fields
  String stockTicker;
  var openPrice;
  var highPrice;
  var lowPrice;
  var currentPrice;
  var previousClose;

  //constructors
  StockProfile(String stockTicker) {
    this.stockTicker = stockTicker;
    getData(stockTicker);
  }
  //functions
  void getData(String stockTicker) async {
    http.Response response = await http.get('https://finnhub.io/api/v1/quote?symbol=$stockTicker&token=$myAPIKey');

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);

      this.currentPrice = decodedData['c'];
      this.openPrice = decodedData['o'];
      this.highPrice = decodedData['h'];
      this.lowPrice = decodedData['l'];
      this.previousClose = decodedData['pc'];
    } else {
      print(response.statusCode);
    }
  } //end of getData
} //end of Class

//Example api output below
/*
Example json return:
{"c":462.25,"h":464,"l":456.03,"o":457.41,"pc":458.43,"t":1597783907}

Meanings:

o
Open price of the day

h
High price of the day

l
Low price of the day

c
Current price

pc
Previous close price

* */

class StockFinancials {
  //fields
  String stockTicker;
  var openPrice;
  var highPrice;
  var lowPrice;
  var currentPrice;
  var previousClose;

  //constructors
  StockFinancials(String stockTicker) {
    this.stockTicker = stockTicker;
    getData(stockTicker);
  }
  //functions
  void getData(String stockTicker) async {
    http.Response response =
        await http.get('https://finnhub.io/api/v1/stock/earnings?symbol=AAPL&token=bsu3fpv48v6r5qhbp2ug');

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      print(decodedData);
    } else {
      print(response.statusCode);
    }
  } //end of getData
}
