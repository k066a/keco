/*
 Copyright ©2020 SMK. All Rights Reserved.
 */

import 'package:flutter/material.dart';
import 'package:keco/utils/Config.dart';

class ContractScreen extends StatelessWidget {
  static String tag = 'ContractScreen';

  @override
  Widget build(BuildContext context) {
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        Config.contract,
        style: TextStyle(fontSize: 28.0, color: Colors.blue),
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
          ],
        ),
      ),
    );

  }
}
