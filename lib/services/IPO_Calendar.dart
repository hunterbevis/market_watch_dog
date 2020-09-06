import 'dart:collection';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:marketwatchdog/utilities/constants.dart' as APIKey;

String myAPIKey = APIKey.myAPIKey;

class IPOCalendar {
  //attributes
  //LinkedHashMap decodedData = LinkedHashMap<String, dynamic>();
  var decodedData;

  //constructors
  IPOCalendar() {
    //delete these after. just testing for now
    //get data is working
    getData();
  }
  //functions
  void getData() async {
    http.Response response = await http.get(''
        'https://finnhub.io/api/v1/calendar/ipo?from=2020-09-01&to=2020-10-01&token=$myAPIKey');

    if (response.statusCode == 200) {
      String data = response.body;
      decodedData = jsonDecode(data);
      //print(decodedData);
      print(decodedData.runtimeType);
      print(decodedData['ipoCalendar'].length);
      print(decodedData['ipoCalendar'][0]['date']);
    } else {
      print(response.statusCode);
    }
  } //end of getData

} //end of Class

void main() {
  IPOCalendar hunter = IPOCalendar();
}

//IPO Calendar api returns the follow:
/*
ipoCalendar
Array of IPO events.
ipoCalendar

Sample output below

ipoCalendar[0].date                  "date": "2020-04-30",
ipoCalendar[0].exchange              "exchange": null,
ipoCalendar[0].name                  "name": "Vontier Corp",
ipoCalendar[0].numberOfShares        "numberOfShares": null,
ipoCalendar[0].price                 "price": null,
ipoCalendar[0].status                "status": "withdrawn",
ipoCalendar[0].symbol                "symbol": null,
ipoCalendar[0].totalSharesValue      "totalSharesValue": null

 */
