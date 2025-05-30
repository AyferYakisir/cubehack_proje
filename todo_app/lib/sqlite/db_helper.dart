import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static final dbName = "todo.sqlite";

  static Future<Database> dbAccess() async {
    String dbPath = join(await getDatabasesPath(), dbName);

    if (await databaseExists(dbPath)) {
      print("Veritabanı Durum : Veritabanı Var, kopyalamaya gerek yok.");
    } else {
      ByteData data = await rootBundle.load("database/$dbName");
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(dbPath).writeAsBytes(bytes, flush: true);

      print("Veritabanı Durum : Veritabanı Yok, kopyalandı.");
    }

    return openDatabase(dbPath);
  }
}
