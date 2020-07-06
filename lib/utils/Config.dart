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
      appName = "kEco",

      home = "Home",
      login = "Login",
      user = "Users",
      contact = "Contacts",
      meeting = "Meetings",
      order = "Orders",
      product = "Products",
      article = "Articles",
      contract = "Contracts",
      ticket = "Tickets",
      logout = "Logout",

      loginTitle = 'kEco Login Screen',
      initMail = 'k066a@mail.de',
      email = 'E-Mail Adresse',
      initPassword = 'password',
      password = 'Passwort',
      forgetPW = 'Forgot password?',
      noUser = 'Username not exists',
      noMatch = 'Password does not match',
      match = 'Login succeded',
      wtf = 'Unknown Login Error',

  //fonts
      // ...

      //images
      logoPNG = "assets/images/logo.png",
      logoTransPNG = "assets/images/logoTrans.png";

  //design
  static ThemeData themeData() {
    return ThemeData(
        accentColor: Colors.blueGrey,
        primaryColor: Colors.grey,
        primaryColorDark: Colors.black26);
  }
}
