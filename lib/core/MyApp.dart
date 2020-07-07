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
import 'package:keco/screens/TicketScreen.dart';
import 'package:keco/screens/UserScreen.dart';

class MyApp extends StatelessWidget {

  //routes
  final routes = <String, WidgetBuilder>{
  HomeScreen.tag: (context) => HomeScreen(),
  LoginScreen.tag: (context) => LoginScreen(),
  ArticleScreen.tag: (context) => ArticleScreen(),
  ContactScreen.tag: (context) => ContactScreen(),
  ContractScreen.tag: (context) => ContractScreen(),
  MeetingScreen.tag: (context) => MeetingScreen(),
  OrderScreen.tag: (context) => OrderScreen(),
  ProductScreen.tag: (context) => ProductScreen(),
  UserScreen.tag: (context) => UserScreen(),
  TicketScreen.tag: (context) => TicketScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kEco',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginScreen(),
      routes: routes,
    );
  }

}
