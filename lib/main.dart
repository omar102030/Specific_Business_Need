import 'package:flutter/material.dart';
import 'package:task_from_omar_ahmed/task_app.dart';

import 'core/di/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp(const TaskApp());
}
