/*
 Copyright ©2020 SMK. All Rights Reserved.
 */

import 'package:keco/model/contact.dart';

class Meeting {
  int _mettingID;
  String _name;
  MeetingType _type;
  List<Contact> _participants;
  String _dateAndTime;
  String _location;
  String _notes;
  String _state;
}

enum MeetingType { Bride, Man, Woman, Fitting, Tailor, Internal, Other }
