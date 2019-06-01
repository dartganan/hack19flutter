import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:fancy_on_boarding/page_model.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  static final skills = [
    'User interface',
    'Data & backend',
    'Accessibility & Internacionalization',
    'Plataform Integration',
    'Packages & plugins',
    'Tools & techniques'
  ];
  final pageList = [
    PageModel(
        color: const Color(0xFF678FB4),
        heroAssetPath: 'assets/hotels.png',
        title: Text('Welcome',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: Text(
            'Este é um app voltado para desenvolvedores que buscam esclarecimento de dúvidas, mentoria e novas idéias relacionadas a Flutter.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconAssetPath: 'assets/key.png'),
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
  ];

  static Widget _whiteTheme(Widget child) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
      ),
      child: child,
    );
  }

  static List<Widget> _buildList(List<String> skills) {
    return skills.map((skill) {
      return Text(skill);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FancyOnBoarding(
        pageList: pageList,
        mainPageRoute: '/main',
      ),
    );
  }
}
