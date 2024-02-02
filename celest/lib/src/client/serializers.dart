// ignore_for_file: type=lint, unused_local_variable, unnecessary_cast, unnecessary_import

import 'package:celest/celest.dart';
import 'package:celest_backend/models.dart';

final class TaskSerializer extends Serializer<Task> {
  const TaskSerializer();

  @override
  Task deserialize(Object? value) {
    final serialized = assertWireType<String>(value);
    return Task.fromJson(serialized);
  }

  @override
  String serialize(Task value) => value.toJson();
}
