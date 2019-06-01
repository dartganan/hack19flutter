import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:hack19flutter/blocs/mainBloc.dart';
import 'package:hack19flutter/models/askModel.dart';

import 'package:flutter_tags/input_tags.dart';
import 'package:flutter_tags/selectable_tags.dart';

class FeedNewPage extends StatefulWidget {
  @override
  _FeedNewPageState createState() => _FeedNewPageState();
}

class _FeedNewPageState extends State<FeedNewPage> {
   BlocMain blocMain;
  AskModel ask = AskModel();

  List<Tag> tags = List();

  TextEditingController askController = TextEditingController();


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    blocMain = BlocProviderList.of<BlocMain>(context);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text("What's your ask?", style: TextStyle(fontSize: 20, color: Colors.black87),),
             TextField(
               onChanged: (val){
                 setState(() {
                  ask.ask = val; 
                 });
               },
               decoration: InputDecoration(
                 labelText: "ask"
               ),
             ),
             SizedBox(
               height: 30,
             ),
             Text("Tags", style: TextStyle(fontSize: 20, color: Colors.black87),),
             SizedBox(
               height: 30,
             ),
             SelectableTags(
                              tags: [
                                Tag(title: "User interface", id: 0, active: false),
                                Tag(title: "Data & backend", id: 1, active: false),
                                Tag(title: "'Accessibility", id: 2, active: false),
                                Tag(title: "Internacionalization", id: 3, active: false),
                                Tag(title: "Plataform Integration", id: 4, active: false),
                                Tag(title: "Packages & plugins", id: 5, active: false),
                                Tag(title: "Tools & techniques", id: 6, active: false),
                               
                              ],
                              activeColor: Color.fromRGBO(29, 159, 214, 1),
                              textColor: Color.fromRGBO(29, 159, 214, 1),
                              onPressed: (tag) {
                               
                               setState(() {
                                tags.add(tag); 
                               });
                                print(tags);
                              },
                            ),
             Center(
               child: RaisedButton(
                 onPressed: () async{

                  blocMain.addAsk(ask);
                  Navigator.of(context).pop();
                 },
                 color: Colors.blue,
                 child: Text("ENVIAR", style: TextStyle(color: Colors.white),),
               ),
             )
           ],
        ),
      ),
    );
  }
}