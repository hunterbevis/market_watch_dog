import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StockCard extends StatefulWidget {
  final String stockTicker;
  final String subtitle;

  StockCard({@required this.stockTicker, this.subtitle});

  @override
  _StockCardState createState() => _StockCardState();
}

class _StockCardState extends State<StockCard> {
  @override
  Widget build(BuildContext context) {
    String subtitleText;
    if (widget.subtitle == null) {
      subtitleText = "";
      print("Subtitle text field passed from HomeScreen is empty");
    } else {
      subtitleText = widget.subtitle;
    }

    return Container(
      child: Card(
        elevation: 10.0,
        color: Colors.blueGrey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text('${widget.stockTicker}'),
              subtitle: Text('some tasddf;alksdjf ;alskdjf ;asldkfj'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('Graph'),
                  onPressed: () {/* change to graph view */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
