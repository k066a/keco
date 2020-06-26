/*
 Copyright ©2020 SMK. All Rights Reserved.
 */

class User {
  int _id;
  String _name;
  String _password;

  User(this._id, this._name, this._password);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  User.fromMap(Map<String, dynamic> map) {
    this._id = map['user_id'];
    this._name = map['user_name'];
    this._password = map['user_password'];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["user_id"] = _id;
    map["user_name"] = _name;
    map["user_password"] = _password;
    return map;
  }
}
