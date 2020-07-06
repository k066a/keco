/*
 Copyright ©2020 SMK. All Rights Reserved.
 */

import 'package:flutter/material.dart';
import 'package:keco/screens/ArticleScreen.dart';
import 'package:keco/screens/ContactScreen.dart';
import 'package:keco/screens/ContractScreen.dart';
import 'package:keco/screens/LoginScreen.dart';
import 'package:keco/screens/MeetingScreen.dart';
import 'package:keco/screens/OrderScreen.dart';
import 'package:keco/screens/TicketScreen.dart';
import 'package:keco/screens/UserScreen.dart';
import 'package:keco/utils/Config.dart';

class HomeScreen extends StatefulWidget {
  static String tag = 'HomeScreen';

  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final ticketButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(TicketScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text(Config.ticket, style: TextStyle(color: Colors.white)),
      ),
    );

    final articleButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(ArticleScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text(Config.article, style: TextStyle(color: Colors.white)),
      ),
    );

    final contactButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(ContactScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text(Config.contact, style: TextStyle(color: Colors.white)),
      ),
    );

    final userButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(UserScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text(Config.user, style: TextStyle(color: Colors.white)),
      ),
    );

    final meetingButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(MeetingScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text(Config.meeting, style: TextStyle(color: Colors.white)),
      ),
    );

    final orderButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(OrderScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text(Config.order, style: TextStyle(color: Colors.white)),
      ),
    );

    final contractButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(ContractScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text(Config.contract, style: TextStyle(color: Colors.white)),
      ),
    );

    final logoutButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(LoginScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text(Config.logout, style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
          children: <Widget>[
            welcome,
            SizedBox(height: 24.0),
            ticketButton,
            SizedBox(height: 24.0),
            contactButton,
            SizedBox(height: 24.0),
            meetingButton,
            SizedBox(height: 24.0),
            articleButton,
            SizedBox(height: 24.0),
            contractButton,
            SizedBox(height: 24.0),
            orderButton,
            SizedBox(height: 24.0),
            userButton,
            SizedBox(height: 24.0),
            logoutButton
          ],
        ),
      ),
    );

  }
}
