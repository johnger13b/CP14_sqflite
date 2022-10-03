
// Es simplemente una manera de agregar funcionalidad a una clase existente.
import 'package:misiontic_todo/domain/models/to_do.dart';

extension ToDoEntity on ToDo {
  static ToDo fromRecord(Map<String, dynamic> record) {
    return ToDo(
        uuid: record['uuid'],
        content: record['content'],
        completed: record["state"] == 1);
  }

  Map<String, dynamic> get record => {
        "uuid": uuid,
        "content": content,
        "state": completed ? 1 : 0,
      };
}
