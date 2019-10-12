import 'package:flutter/material.dart';
import 'package:coopup_beta/widgets/drawer.dart';
import 'package:coopup_beta/models/CooperatorListData.dart';


class ResultsSearchPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ResultsSearchPageState();
  }
}

class _ResultsSearchPageState extends State<ResultsSearchPage> {

  final title = 'Résultats de votre recherche';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(title),
            floating: true,
            pinned: true,
            flexibleSpace: Image.asset('images/technology.jpg', fit: BoxFit.cover,),
            expandedHeight: 150,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  splashColor: Colors.purple,
                  onTap: () {
                    /// Navigator.of(context).pushNamed('/cooperators/id');
                  },
                  child: Card(
                    margin: EdgeInsets.all(30.0),
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0),
                    ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        /// TODO : HERO WIDGET
                        Container(
                          height: 150.0,
                          width: 50.0,
                          margin: EdgeInsets.all(10.0),
                          child: Placeholder(),
                        ),
                        Text('Coopérateur #$index', textAlign: TextAlign.center,textScaleFactor: 1.5,),
                        Container(
                          margin: EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                            child: Text('Activité', textScaleFactor: 1.2,)),
                        Container(
                            margin: EdgeInsets.all(5.0),
                            padding: EdgeInsets.all(5.0),
                            alignment: Alignment.center,
                            child: Text('Ville', textScaleFactor: 1.1,))
                      ],
                    ),
                  ),
                ),
              ),
              childCount: 41,
            ),
          ),
        ],
      ),
    );
  }
}