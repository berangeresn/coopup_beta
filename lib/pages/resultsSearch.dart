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
              flexibleSpace: Placeholder(),
              expandedHeight: 150,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => Card(margin: EdgeInsets.all(20.0),child: Text('Item #$index')),
                childCount: 41,
              ),
            ),
          ],
        ),
    );
  }
}