import 'package:flutter/material.dart';
import 'package:coopup_beta/pages/home.dart';
import 'package:coopup_beta/pages/login.dart';
import 'pages/signup.dart';
import 'pages/search.dart';
import 'package:coopup_beta/pages/resultsSearch.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coop\'up',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Home(title: "Accueil de Coop\'up"),
      routes: <String, WidgetBuilder> {
        '/login' : (BuildContext context) => new LoginPage(),
        '/signup' : (BuildContext context) => new SignUpPage(),
        '/search' : (BuildContext context) => new SearchPage(),
        'resultsSearch' : (BuildContext context) => new ResultsSearchPage(),
      },
    );
  }
}




