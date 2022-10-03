import 'package:get/get.dart';
import 'package:misiontic_todo/domain/models/to_do.dart';
import 'package:misiontic_todo/domain/use_cases/to_do_manager.dart';

class ToDoController extends GetxController {
  List<ToDo> toDos = [];

  Future<void> initialize() async {
    await ToDoManager.initialize();
  }

  Future<void> saveToDo({
    required ToDo toDo,
  }) async {
    await ToDoManager.save(toDo: toDo);
  }

  Future<List<ToDo>> getAll({
    String? orderBy,
  }) async {
    return await ToDoManager.getAll(orderBy: orderBy);
  }

  Future<void> updateToDo({required ToDo toDo}) async {
    await ToDoManager.update(toDo: toDo);
  }

  Future<void> deleteToDo({required ToDo toDo}) async {
    await ToDoManager.delete(toDo: toDo);
  }

  Future<void> deleteAll() async {
    await ToDoManager.deleteAll();
  }
}
