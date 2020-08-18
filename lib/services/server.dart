import 'package:http/http.dart';

String myAPIKey = 'bsu3fpv48v6r5qhbp2ug';
String stockTicker = "AAPL";
//server code will start here

void getData() async {
  Response response = await get('https://finnhub.io/api/v1/quote?symbol=$stockTicker&token=$myAPIKey');
  print(response.body);
}

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
