import 'package:flutter/material.dart';
import 'package:coopup_beta/widgets/drawer.dart';
import 'package:wave/wave.dart';
import 'package:coopup_beta/pages/search.dart';


class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[500],
        ),
        drawer: AppDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin : EdgeInsets.only(bottom: 20.0),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                      'images/coopup-logo.png',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width / 1
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'L\'Expérience Entreprendre',
                  style: TextStyle(color: Colors.deepPurple.withOpacity(0.9), fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 12.0),
                  maxLines: 2,
                  textScaleFactor: 1.6,
                  semanticsLabel: 'slogan',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(
                    'Bienvenue à la coopérative Coop Up\' !',
                    style: TextStyle(color: Colors.deepPurple[900], fontSize: 13.0, ),
                    textScaleFactor: 1.3,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  )
                ]
            ),
            SizedBox(height: 10.0),
            OutlineButton(
              textColor: Colors.deepPurple,
              splashColor: Colors.purple,
              padding: EdgeInsets.all(12.0),
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.of(context).pushNamed('/search');
              },
              child: Text(
                'Rechercher un coopérateur',
                textScaleFactor: 1.2,
              ),
            ),
            SizedBox(height: 10.0),
            OutlineButton(
              textColor: Colors.deepPurple,
              splashColor: Colors.purple,
              padding: EdgeInsets.all(12.0),
              shape: StadiumBorder(),
              onPressed: () {},
              child: Text(
                'S\'inscrire à une réunion',
                textScaleFactor: 1.2,
              ),
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.deepPurple[500],
              shape: StadiumBorder(),
              child: Text('Contactez-nous !', textScaleFactor: 1.3,),
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              splashColor: Colors.purple,
              elevation: 5.0,
              highlightColor: Colors.purple,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
