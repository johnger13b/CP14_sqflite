import 'package:uuid/uuid.dart';

class ToDo {
  final String _uuid, _content;
  bool completed;

  ToDo({required String content, String? uuid, this.completed = false})
      : _uuid = uuid ?? const Uuid().v4(),
        _content = content;

  String get uuid => _uuid;

  String get content => _content;
}