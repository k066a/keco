/*
 Copyright ©2020 SMK. All Rights Reserved.
 */

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:keco/model/User.dart';
import 'package:keco/model/contact.dart';

class ContactScreen extends StatefulWidget {
  static String tag = 'ContactScreen';

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  String initContacts () {}

  final String jsonSample =
      '[{"name":"Ram","email":"ram@gmail.com","age":23,"income":"10Rs","country":"India","area":"abc"},{"name":"Shyam","email":"shyam23@gmail.com",'
      '"age":28,"income":"30Rs","country":"India","area":"abc","day":"Monday","month":"april"},{"name":"John","email":"john@gmail.com","age":33,"income":"15Rs","country":"India",'
      '"area":"abc","day":"Monday","month":"april"},{"name":"Ram","email":"ram@gmail.com","age":23,"income":"10Rs","country":"India","area":"abc","day":"Monday","month":"april"},'
      '{"name":"Shyam","email":"shyam23@gmail.com","age":28,"income":"30Rs","country":"India","area":"abc","day":"Monday","month":"april"},{"name":"John","email":"john@gmail.com",'
      '"age":33,"income":"15Rs","country":"India","area":"abc","day":"Monday","month":"april"},{"name":"Ram","email":"ram@gmail.com","age":23,"income":"10Rs","country":"India",'
      '"area":"abc","day":"Monday","month":"april"},{"name":"Shyam","email":"shyam23@gmail.com","age":28,"income":"30Rs","country":"India","area":"abc","day":"Monday","month":"april"},'
      '{"name":"John","email":"john@gmail.com","age":33,"income":"15Rs","country":"India","area":"abc","day":"Monday","month":"april"},{"name":"Ram","email":"ram@gmail.com","age":23,'
      '"income":"10Rs","country":"India","area":"abc","day":"Monday","month":"april"},{"name":"Shyam","email":"shyam23@gmail.com","age":28,"income":"30Rs","country":"India","area":"abc",'
      '"day":"Monday","month":"april"},{"name":"John","email":"john@gmail.com","age":33,"income":"15Rs","country":"India","area":"abc","day":"Monday","month":"april"}]';
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    var json = jsonDecode(jsonSample);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: toggle
              ? Column(
            children: [
              JsonTable(
                json,
                showColumnToggle: true,
                allowRowHighlight: true,
                rowHighlightColor: Colors.yellow[500].withOpacity(0.7),
                paginationRowCount: 4,
                onRowSelect: (index, map) {
                  print(index);
                  print(map);
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              Text("Contacts")
            ],
          )
              : Center(
            child: Text(getPrettyJSONString(jsonSample)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.grid_on),
          onPressed: () {
            setState(
                  () {
                toggle = !toggle;
              },
            );
          }),
    );
  }

  String getPrettyJSONString(jsonObject) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String jsonString = encoder.convert(json.decode(jsonObject));
    return jsonString;
  }
}
