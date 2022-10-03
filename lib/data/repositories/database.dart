import 'package:misiontic_todo/data/entities/to_do.dart';
import 'package:misiontic_todo/domain/models/to_do.dart';
import 'package:misiontic_todo/domain/repositories/sqflite_interface.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ToDoRepository extends SqfliteInterface {
  late Database _database;

  Database get database => _database;

  @override
  Future<Database> connectDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'todo_database.db'),
      version: 1,
    );
    return _database;
  }

  @override
  Future<void> createTable({
    required Database database,
  }) async {
    // TODO: Carga y ejecuta el script para crear la tabla en la base de datos.
  }

  @override
  Future<void> insert({
    required Database database,
    required ToDo data,
  }) async {
    // TODO: En la tabla 'todo_list' guarda data.record.
    // TODO-HINT: Para evitar errores por conflictos usa conflictAlgorithm = replace
  }

  @override
  Future<List<ToDo>> read({
    required Database database,
    required String where,
    required List whereArgs,
    String? orderBy,
  }) async {
    // TODO: Usando where y whereArgs lee la base de datos.
    // TODO: Retorna una lista de ToDos convirtiendo los registros a ToDo.
  }

  @override
  Future<List<ToDo>> readRecords({
    required Database database,
    String? orderBy,
  }) async {
    // TODO: Lee todos los registros en 'todo_list'
    // TODO: Retorna una lista de ToDos convirtiendo los registros a ToDo.
  }

  @override
  Future<void> update(
      {required Database database,
      required String where,
      required List whereArgs,
      required ToDo data}) async {
    // TODO: Usando where y whereArgs actualiza la base de datos con data.record
  }

  @override
  Future<void> delete(
      {required Database database,
      required String where,
      required List whereArgs}) async {
    // TODO: Usando where y whereArgs elimina registros de 'todo_list'.
  }

  @override
  Future<void> truncate({required Database database}) async {
    // SQLite `TRUNCATE` statement not allowed by SQFlite

    // TODO: Ejecuta un script DELETE sin filtrar para eliminar todos los registros.
  }

  @override
  Future<void> drop({required Database database}) async {
    await database.execute('DROP TABLE todo_list');
  }
}
