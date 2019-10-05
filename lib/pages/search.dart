import 'package:flutter/material.dart';
import 'package:coopup_beta/pages/resultsSearch.dart';


class SearchPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Rechercher un coopérateur',
            textScaleFactor: 0.9,
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(child: FractionallySizedBox(heightFactor: 0.3,)),

              /// TODO : Containers à refactoriser
              Container(
                padding: EdgeInsets.all(15.0),
                child:
                TextField(
                  decoration:
                  InputDecoration(
                    hintText: 'Activité',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    border: OutlineInputBorder(),
                    icon: Icon(
                      Icons.work,
                      color: Colors.deepPurple,),
                    labelText: 'Recherche par activité',
                    contentPadding: EdgeInsets.all(18.0),
                  ),
                  cursorWidth: 4.0,
                  cursorColor: Colors.deepPurple,
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child:
                TextField(
                  decoration:
                  InputDecoration(
                    hintText: 'Nom',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    border: OutlineInputBorder(),
                    icon: Icon(
                      Icons.people,
                      color: Colors.deepPurple,),
                    labelText: 'Recherche par nom',
                    contentPadding: EdgeInsets.all(18.0),
                  ),
                  cursorWidth: 4.0,
                  cursorColor: Colors.deepPurple,
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child:
                TextField(
                  decoration:
                  InputDecoration(
                    hintText: 'Ville',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    border: OutlineInputBorder(),
                    icon: Icon(
                      Icons.location_city,
                      color: Colors.deepPurple,),
                    labelText: 'Recherche par ville',
                    contentPadding: EdgeInsets.all(18.0),
                  ),
                  cursorWidth: 4.0,
                  cursorColor: Colors.deepPurple,
                  keyboardType: TextInputType.text,
                ),
              ),
              Flexible(child: FractionallySizedBox(heightFactor: 0.1,)),
              RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  onPressed: () {
                    /// TODO : search
                    Navigator.of(context).pushNamed('resultsSearch');
                  },
                  padding: EdgeInsets.all(15),
                  color: Colors.deepPurple,
                  child: Text('Rechercher', style: TextStyle(color: Colors.white,), textScaleFactor: 1.1,)
              ),
            ],
          ),
        ),
      ),
    );

  }
}




