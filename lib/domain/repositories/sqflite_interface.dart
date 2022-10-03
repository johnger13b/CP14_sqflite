import 'package:flutter/services.dart';
import 'package:misiontic_todo/domain/models/to_do.dart';
import 'package:sqflite/sqflite.dart';

abstract class SqfliteInterface {
  Future<Database> connectDatabase();

  Future<void> createTable({
    required Database database,
  });

  Future<void> insert({
    required Database database,
    required ToDo data,
  });

  Future<void> update({
    required Database database,
    required String where,
    required List<dynamic> whereArgs,
    required ToDo data,
  });

  Future<List<ToDo>> read({
    required Database database,
    required String where,
    required List<dynamic> whereArgs,
  });

  Future<List<ToDo>> readRecords({
    required Database database,
  });

  Future<void> delete({
    required Database database,
    required String where,
    required List<dynamic> whereArgs,
  });

  Future<void> truncate({
    required Database database,
  });

  Future<void> drop({
    required Database database,
  });

  /// Load the script to create the table
  Future<String> loadScript() async {
    return await rootBundle.loadString('assets/sql/todo_list.sql');
  }
}
