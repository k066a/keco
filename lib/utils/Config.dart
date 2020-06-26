/*
 Copyright ©2020 SMK. All Rights Reserved.
 */

import 'package:flutter/material.dart';

class Config {
  static const int
      //integers
      simpleInt = 69;

  static const String

      //strings
      appName = "keco",

      //fonts
      // ...

      //images
      // ...

      //routes
      homeRoute = "/home",
      loginRoute = "/login",
      userRoute = "/user",
      contactRoute = "/contact",
      meetingRoute = "/meeting",
      orderRoute = "/order",
      productRoute = "/product",
      articleRoute = "/article",
      contractRoute = "/contract";

  //design
  static ThemeData themeData() {
    return ThemeData(
        accentColor: Colors.blueGrey,
        primaryColor: Colors.grey,
        primaryColorDark: Colors.black26);
  }
}
