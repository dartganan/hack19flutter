import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    Size displaySize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Mentory finder',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.chat,
                color: Colors.grey[600],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[600],
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 30,
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[600],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.multiline_chart,
                color: Colors.grey[600],
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 3),
                    height: displaySize.height * 0.25,
                    color: Colors.white,
                    child: Stack(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Center(
                              child: AutoSizeText(
                                "Alguém sabe como corrigir erro do Android X",
                                style: TextStyle(fontSize: 30.0),
                                minFontSize: 15.0,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 10,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 35,
                          child: Text("Joáo"),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.grey[400],
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 40,
                          child: Icon(
                            Icons.comment,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
