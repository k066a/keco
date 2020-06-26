/*
 Copyright ©2020 SMK. All Rights Reserved.
 */

class Contact {
  int _cid;
  String _name;
  String _address;
  int _phonenumber;
  int _mobilephone;
  String _email;
  String _location;
  String _aware;
  String _type;

  Contact(this._cid, this._name, this._address, this._phonenumber,
      this._mobilephone, this._email, this._location, this._aware, this._type);

  int get cid => _cid;

  set cid(int value) {
    _cid = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  int get phonenumber => _phonenumber;

  set phonenumber(int value) {
    _phonenumber = value;
  }

  int get mobilephone => _mobilephone;

  set mobilephone(int value) {
    _mobilephone = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get location => _location;

  set location(String value) {
    _location = value;
  }

  String get aware => _aware;

  set aware(String value) {
    _aware = value;
  }

  String get type => _type;

  set type(String value) {
    _type = value;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (cid != null) {
      map['cid'] = _cid;
    }
    map['name'] = _name;
    map['address'] = _address;
    map['phonenumber'] = _phonenumber;
    map['mobilephone'] = _mobilephone;
    map['email'] = _email;
    map['aware'] = _aware;
    map['location'] = _location;
    map['type'] = _type;
    return map;
  }

  Contact.fromMap(Map<String, dynamic> map) {
    this._cid = map['cid'];
    this._name = map['name'];
    this._address = map['address'];
    this._phonenumber = map['phonenumber'];
    this._mobilephone = map['mobilephone'];
    this._email = map['email'];
    this._location = map['location'];
    this._aware = map['aware'];
    this._type = map['type'];
  }
}
