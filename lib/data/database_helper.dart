/*
 Copyright ©2020 SMK. All Rights Reserved.
 */

import 'dart:async';
import 'dart:io';

import 'package:keco/model/User.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static DataBaseHelper _databaseHelper;
  static Database _database;
  String tableName = 'user_table';
  String id = 'user_id';
  String name = 'user_name';
  String password = 'user_password';

  DataBaseHelper._creatInstance();

  factory DataBaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DataBaseHelper._creatInstance();
    }
    return _databaseHelper;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'user.db';
    var userDatabase = await openDatabase(path, version: 1, onCreate: _creatDB);
    return userDatabase;
  }

  void _creatDB(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $tableName($id INTEGER PRIMARY KEY AUTOINCREMENT, $name TEXT, $password TEXT)');
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<List<Map<String, dynamic>>> getUserMapList() async {
    Database db = await this.database;
    var result = await db.rawQuery('SELECT * FROM $tableName order by $id ASC');
    //var result = await db.query(tableName, orderBy: '$id ASC');
    return result;
  }

  Future<int> insertUser(User user) async {
    Database db = await this.database;
    var result = await db.insert(tableName, user.toMap());
    return result;
  }

  Future<int> updateUser(User user) async {
    Database db = await this.database;
    var result = await db.update(tableName, user.toMap(),
        where: '$id = ?', whereArgs: [user.id]);
    return result;
  }

  Future<int> deleteUser(int id1) async {
    var db = await this.database;
    int result = await db.rawDelete('DELETE FROM $tableName WHERE $id = $id1');
    return result;
  }

  Future<int> getCount() async {
    var db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $tableName');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

  Future<List<User>> getUserList() async {
    var userMapList = await getUserMapList();
    int count = userMapList.length;
    List<User> userList = List<User>();
    for (int i = 0; i < count; i++) {
      userList.add(User.fromMap(userMapList[i]));
    }
    return userList;
  }
}
