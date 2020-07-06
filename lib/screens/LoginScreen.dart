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
      padding: EdgeInsets.symmetric(vertical: 16.0),
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
            forgotLabel
          ],
        ),
      ),
    );
  }

  String _loginMsg(int code) {
    if(code == 0) {
      Navigator.of(context).pushNamed(HomeScreen.tag);
      return Config.match;
    } else if (code == 1) {
      return Config.noUser;
    } else if (code == 2) {
      return Config.noMatch;
    } else {
      return Config.wtf;
    }
  }

  int _loginUser(String mail, String pw) {
      if (!mockUsers.containsKey(mail)) {
        return 1;
      }
      if (mockUsers[mail] != pw) {
        return 2;
      }
      return 0;
    }

}