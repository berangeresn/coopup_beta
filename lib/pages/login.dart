import 'package:flutter/material.dart';
import 'package:coopup_beta/pages/home.dart';
import 'package:coopup_beta/pages/signup.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final logo = Padding(
      padding: EdgeInsets.all(40.0),
      child: CircleAvatar(
        radius: 80.0,
        backgroundColor: Colors.transparent,
        child: Image.asset("images/coopup-logo.png"),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Mot de passe',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        padding: EdgeInsets.all(12),
        color: Colors.deepPurple,
        child: Text('Se connecter', style: TextStyle(color: Colors.white,), textScaleFactor: 1.2,),
      ),
    );

    final signUpLabel = FlatButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/signup');
        },
        child: Text(
            'Pas encore inscrit ? Créer un compte',
        style: TextStyle(color: Colors.black54)
          ,)
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Mot de passe oublié ?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return SafeArea(
      child : Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 20.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            signUpLabel,
            forgotLabel
          ],
        ),
      ),
    ),
    );
  }
}