import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class AccountDatabase {
  static Database? _database;

  static Future<void> init() async {
    if (_database != null) {
      return;
    }
    try {
      String dbPath = path.join(await getDatabasesPath(), 'accounts_database.db');
      _database = await openDatabase(
        dbPath,
        version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
            'CREATE TABLE accounts(id INTEGER PRIMARY KEY, email TEXT, password TEXT)',
          );
        },
      );
    } catch (ex) {
      print('Error initializing database: $ex');
    }
  }

  static Future<void> insertAccount(Account account) async {
    try {
      await _database!.insert(
        'accounts',
        account.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (ex) {
      print('Error inserting account: $ex');
    }
  }

  static Future<Account?> getAccount(String email, String password) async {
    try {
      List<Map<String, dynamic>> maps = await _database!.query(
        'accounts',
        where: 'email = ? AND password = ?',
        whereArgs: [email, password],
      );
      if (maps.isNotEmpty) {
        return Account.fromMap(maps.first);
      } else {
        return null;
      }
    } catch (ex) {
      print('Error getting account: $ex');
      return null;
    }
  }
}

class Account {
  final int? id;
  final String email;
  final String password;

  Account({this.id, required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'password': password,
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      id: map['id'],
      email: map['email'],
      password: map['password'],
    );
  }
}
