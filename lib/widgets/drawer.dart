import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Coop\' up', textScaleFactor: 1.0),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Rechercher un coopérateur', textScaleFactor: 1.1,),
            onTap: () {
              Navigator.of(context).pushNamed('/search');
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('S\'informer sur la coopérative', textScaleFactor: 1.1,),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.create),
            title: Text('Blog et actualités', textScaleFactor: 1.1),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Contact', textScaleFactor: 1.1),
            onTap: () {},
          ),
          Divider(
            height: 20.0,
            thickness: 1.0,
          ),
          ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text('Espace coopérateur', textScaleFactor: 1.1),
            onTap: () {
              Navigator.of(context).pushNamed('/login');
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text('Espace client / entreprise', textScaleFactor: 1.1),
            onTap: () {
              Navigator.of(context).pushNamed('/login');
            },
          ),
          Divider(
            height: 20.0,
            thickness: 1.0,
          ),
          ListTile(
            leading: Icon(Icons.fiber_new),
            title: Text('Créer un compte', textScaleFactor: 1.1),
            onTap: () {
              Navigator.of(context).pushNamed('/signup');
            },
          ),
        ],
      ),
    );
  }


}