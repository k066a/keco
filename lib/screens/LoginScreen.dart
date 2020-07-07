/*
 Copyright ©2020 SMK. All Rights Reserved.
 */

import 'package:flutter/material.dart';
import 'package:keco/utils/Config.dart';
import 'package:keco/screens/HomeScreen.dart';
import 'package:keco/utils/Constant.dart';

class LoginScreen extends StatefulWidget {
  static String tag = 'LoginScreen';

  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final mailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    mailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Image.asset(
        Config.logoTransPNG,
        height: 126,
        width: 235,
      ),
    );

    final email = TextFormField(
      controller: mailController,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: Config.email,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      controller: passwordController,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: Config.password,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          _loginMsg(_loginUser(mailController.text, passwordController.text));
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final signButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          _signMsg(_signUser(mailController.text, passwordController.text));
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Sign In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        Config.forgetPW,
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
          children: <Widget>[
            SizedBox(height: 24.0),
            logo,
            SizedBox(height: 24.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            signButton,
            SizedBox(height: 8.0),
            forgotLabel
          ],
        ),
      ),
    );
  }

  String _loginMsg(int code) {
    if(code == 0) {
      Navigator.of(context).pushNamed(HomeScreen.tag);
      return Config.allGood;
    } else if (code == 1) {
      return Config.noMail;
    } else if (code == 2) {
      return Config.noMatch;
    } else {
      return Config.loginError;
    }
  }

  String _signMsg(int code) {
    if(code == 0) {
      Navigator.of(context).pushNamed(HomeScreen.tag);
      return Config.allGood;
    } else if (code == 1) {
      return Config.mailExist;
    } else if (code == 2) {
      return Config.match;
    } else {
      return Config.signError;
    }
  }

  int _loginUser(String mail, String pw) {
    if (!mockUsers.containsKey(mail)) {
      return 1;   // no such mail found
    }
    if (mockUsers[mail] != pw) {
      return 2;   // username and password not matching
    }
    return 0;     // match found, all good
  }

  int _signUser(String mail, String pw) {
    if (mockUsers.containsKey(mail)) {
      return 1;   // user already exists
    }
    if (mail == pw) {
      return 2;   // mail and password not allowed to match
    }
    return 0;     // user created, all good
  }

}