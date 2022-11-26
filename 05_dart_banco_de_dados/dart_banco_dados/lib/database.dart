import 'package:mysql1/mysql1.dart';

class Database {

  Future<MySqlConnection> openConnection() {

    var settings = ConnectionSettings(
      host: 'localhost',
      port: 13306,
      user: 'root',
      password: 'root',
      db: 'dart_mysql'
    );

    return MySqlConnection.connect(settings);
  }
}