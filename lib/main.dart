import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:hack19flutter/blocs/mainBloc.dart';
import 'package:hack19flutter/pages/feedPage.dart';
import 'package:hack19flutter/pages/onboardingPage.dart';
import 'package:hack19flutter/pages/perfilPage.dart';
import 'package:hack19flutter/pages/rootPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProviderList(
                listBloc: [
                  Bloc(BlocMain()),
                ],
                child: MaterialApp(
            title: 'hacka19 flutter',
            theme: new ThemeData(
              primarySwatch: Colors.blue,
            
            ),
            home: FeedPage(),
              routes: {
        "/feed": (_) => FeedPage(),
        "/onboard": (_) => OnboardingPage(),
        "/perfil": (_) => PerfilPage(),
        "/rootPage": (_) => RootPage(),
      },
          ),
            );
  }
}
