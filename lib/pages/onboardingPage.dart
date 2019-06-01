import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:fancy_on_boarding/page_model.dart';
import 'package:hack19flutter/pages/feedPage.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  var rating = 0.0;
  final skills = [
    'User interface',
    'Data & backend',
    'Accessibility & i18n',
    'Plataform Integration',
    'Packages & plugins',
    'Tools & techniques'
  ];

  Widget _whiteTheme(Widget child) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
      ),
      child: child,
    );
  }

  List<Widget> _buildList(List<String> skills) {
    return skills.map((skill) {
      return new Padding(
        padding: EdgeInsets.all(3.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(skill),
            SmoothStarRating(
                allowHalfRating: false,
                onRatingChanged: (value) {
                  setState(() {
                    rating = value;
                    print(rating);
                  });
                },
                starCount: 5,
                rating: rating,
                size: 25.0,
                color: Colors.yellow,
                borderColor: Colors.yellow,
                spacing: 0.0)
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: <Widget>[
         FancyOnBoarding(
          pageList: [
            PageModel(
                color: const Color(0xFF678FB4),
                heroAssetPath: 'assets/flutter.png',
                title: Text('Welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: 34.0,
                    )),
                body: Text(
                    'This is an application for raising doubts, mentoring and new ideas related to Flutter.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                iconAssetPath: 'assets/flutter.png'),
            PageModel(
                color: const Color(0xFF65B0B4),
                heroAssetPath: 'assets/profile.png',
                title: Text('Personal information',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: 34.0,
                    )),
                body: Container(
                  child: _whiteTheme(Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Location'),
                      ),
                    ],
                  )),
                ),
                iconAssetPath: 'assets/profile.png'),
            PageModel(
              color: const Color(0xFF9B90BC),
              heroAssetPath: 'assets/skill.png',
              title: Text('Skills',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontSize: 34.0,
                  )),
              body: Column(children: _buildList(skills)),
              iconAssetPath: 'assets/skill.png',
            ),
          ],
          mainPageRoute: '/main',
        ),
        Positioned(
          bottom: 5,
          right: 0,
          child: FlatButton(
            onPressed: (){
               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => FeedPage()));
            },
            child: Text("Finalizar", style: TextStyle(color: Colors.white, fontSize: 15),),
          ),
        )
       ],
      ),
    );
  }
}
