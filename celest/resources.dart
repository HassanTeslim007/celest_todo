// Generated by Celest. This file should not be modified manually, but
// it can be checked into version control.
// ignore_for_file: type=lint, unused_local_variable, unnecessary_cast, unnecessary_import

library; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:celest/celest.dart' as _i1;
import 'package:celest_backend/models.dart' as _i2;

abstract final class apis {
  static const greeting = _i1.CloudApi(name: r'greeting');

  static const tasks = _i1.CloudApi(name: r'tasks');
}

abstract final class functions {
  static const greetingSayHello = _i1.CloudFunction<String, String>(
    api: r'greeting',
    functionName: r'sayHello',
  );

  static const tasksAddTask =
      _i1.CloudFunction<({String title, String importance}), List<_i2.Task>>(
    api: r'tasks',
    functionName: r'addTask',
  );

  static const tasksAlltasks = _i1.CloudFunction<void, List<_i2.Task>>(
    api: r'tasks',
    functionName: r'alltasks',
  );

  static const tasksDeleteTask = _i1.CloudFunction<String, List<_i2.Task>>(
    api: r'tasks',
    functionName: r'deleteTask',
  );

  static const tasksMarkAsCompleted = _i1.CloudFunction<String, void>(
    api: r'tasks',
    functionName: r'markAsCompleted',
  );

  static const tasksMarkAsIncomplete = _i1.CloudFunction<String, void>(
    api: r'tasks',
    functionName: r'markAsIncomplete',
  );
}