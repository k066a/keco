/*
 Copyright ©2020 SMK. All Rights Reserved.
 */

import 'package:flutter/material.dart';
import 'package:keco/screens/ArticleScreen.dart';
import 'package:keco/screens/ContactScreen.dart';
import 'package:keco/screens/ContractScreen.dart';
import 'package:keco/screens/HomeScreen.dart';
import 'package:keco/screens/LoginScreen.dart';
import 'package:keco/screens/MeetingScreen.dart';
import 'package:keco/screens/OrderScreen.dart';
import 'package:keco/screens/ProductScreen.dart';
import 'package:keco/screens/UserScreen.dart';
import 'package:keco/utils/Config.dart';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    title: Config.appName,
    theme: Config.themeData(),
    home: LoginScreen(),

    //routes
    routes: <String, WidgetBuilder>{
      Config.homeRoute: (BuildContext context) => HomeScreen(),
      Config.loginRoute: (BuildContext context) => LoginScreen(),
      Config.articleRoute: (BuildContext context) => ArticleScreen(),
      Config.contactRoute: (BuildContext context) => ContactScreen(),
      Config.contractRoute: (BuildContext context) => ContractScreen(),
      Config.meetingRoute: (BuildContext context) => MeetingScreen(),
      Config.orderRoute: (BuildContext context) => OrderScreen(),
      Config.productRoute: (BuildContext context) => ProductScreen(),
      Config.userRoute: (BuildContext context) => UserScreen(),
    },
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}

class LoginRoute {}
