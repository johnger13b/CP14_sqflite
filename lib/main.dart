import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_todo/ui/app.dart';
import 'package:misiontic_todo/ui/controllers/to_do.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ToDoController());
  runApp(const ToDoApp());
}
