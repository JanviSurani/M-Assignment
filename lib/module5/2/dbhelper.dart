//  2. Create an app for Manage Crud Operation using Sqflite
import 'package:assignment_flutter/module5/2/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  //database name and version
  static const _dbName = "user,db";
  static const _dbVersion = 1;

  //table name
  static const _tableUser = "user";

  //column name
  static const _columnId = "id";
  static const _columnName = "name";
  static const _columnEmail = "email";
  static const _columnContact = "contact";
  static const _columnAge = "age";

  DataBaseHelper._init(); //singleton constructor

  static final DataBaseHelper instance = DataBaseHelper._init();

  // only have a single app-wide reference to the database
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _dbName);

    return await openDatabase(
      path,
      version: _dbVersion,
      onCreate: (db, version) {
        db.execute('''
        CREATE TABLE $_tableUser (
        $_columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $_columnName TEXT NOT NULL,
        $_columnEmail TEXT NOT NULL,
        $_columnContact TEXT NOT NULL,
        $_columnAge INTEGER NOT NULL 
        )
        ''');
      },
    );
  }

  Future<int?> insertUser(User user) async {
    Database? db = await database;

    return await db?.insert(_tableUser, user.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<User>> getUserList() async {
    List<User> userList = [];
    Database? db = await database;
    List<Map<String, dynamic>> list = await db!.query(_tableUser);

    userList = List.generate(list.length, (index) => User.fromMap(list[index]))
        .toList();
    return userList;
  }

  Future<int> updateUser(User user) async //this object contains id
      {
    Database? db = await database;

    return await db!.update(_tableUser, user.toMap(),
        where: "$_columnId=?", whereArgs: [user.id]);
  }

  Future<int> deleteUser(int id) async {
    Database? db = await database;
    return await db!.delete(_tableUser, where: "$_columnId=?", whereArgs: [id]);
  }

  Future<User> getUserById(int id) async {
    Database? db = await database;

    var list =
    await db!.query(_tableUser, where: "$_columnId=?", whereArgs: [id]);

    var userList = list.map((e) => User.fromMap(e)).toList();
    return userList[0];
  }

// Future<List<User>> readUserList() async {
//   Database? db = await database;
//   //db.rawQuery("select * from $_tableUser");
//   //db.query(_tableUser);
//   //Query the table for all the dogs.
//   final List<Map<String, Object?>>? maps = await db?.query(_tableUser);
//
//   // convert the list<Map<String,dynamic> into a list <user>
//   return List.generate(
//     maps!.length,
//     (i) => User(
//         id: maps[i]['id'] as int,
//         name: maps[i]['name'] as String,
//         email: maps[i]['email'] as String,
//         contact: maps[i]['contact'] as String,
//         age: maps[i]['name'] as int),
//   );
// }
}