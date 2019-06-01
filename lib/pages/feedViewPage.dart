import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hack19flutter/models/askModel.dart';


class FeedViewPage extends StatefulWidget {

  AskModel ask = AskModel();

  FeedViewPage({Key key, this.ask}) : super(key: key);
  @override
  _FeedViewPageState createState() => _FeedViewPageState();
}

class _FeedViewPageState extends State<FeedViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            AutoSizeText(
                                "${widget.ask.ask}",
                                style: TextStyle(fontSize: 30.0),
                                minFontSize: 15.0,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              )
          ],
        ),
      ),
    );
  }
}