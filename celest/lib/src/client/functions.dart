// Generated by Celest. This file should not be modified manually, but
// it can be checked into version control.
// ignore_for_file: type=lint, unused_local_variable, unnecessary_cast, unnecessary_import

library;

import 'dart:convert';

import 'package:celest/celest.dart';
import 'package:celest_backend/models.dart';
import 'package:celest_core/src/exception/cloud_exception.dart';

import '../../client.dart';

class CelestFunctions {
  final greeting = CelestFunctionsGreeting();

  final tasks = CelestFunctionsTasks();
}

class CelestFunctionsGreeting {
  /// Says hello to a person called [name].
  Future<String> sayHello(String name) async {
    final $response = await celest.httpClient.post(
      celest.baseUri.resolve('/greeting/say-hello'),
      headers: const {'Content-Type': 'application/json; charset=utf-8'},
      body: jsonEncode({r'name': name}),
    );
    final $body = (jsonDecode($response.body) as Map<String, Object?>);
    if ($response.statusCode == 200) {
      return ($body['response'] as String);
    }
    final $error = ($body['error'] as Map<String, Object?>);
    final $code = ($error['code'] as String);
    final $details = ($error['details'] as Map<String, Object?>?);
    switch ($code) {
      case r'BadRequestException':
        throw Serializers.instance.deserialize<BadRequestException>($details);
      case r'InternalServerException':
        throw Serializers.instance
            .deserialize<InternalServerException>($details);
      case _:
        switch ($response.statusCode) {
          case 400:
            throw BadRequestException($code);
          case _:
            throw InternalServerException($code);
        }
    }
  }
}

class CelestFunctionsTasks {
  Future<List<Task>> alltasks() async {
    final $response = await celest.httpClient.post(
      celest.baseUri.resolve('/tasks/alltasks'),
      headers: const {'Content-Type': 'application/json; charset=utf-8'},
    );
    final $body = (jsonDecode($response.body) as Map<String, Object?>);
    if ($response.statusCode == 200) {
      return ($body['response'] as Iterable<Object?>)
          .map((el) => Serializers.instance.deserialize<Task>(el))
          .toList();
    }
    final $error = ($body['error'] as Map<String, Object?>);
    final $code = ($error['code'] as String);
    final $details = ($error['details'] as Map<String, Object?>?);
    switch ($code) {
      case r'BadRequestException':
        throw Serializers.instance.deserialize<BadRequestException>($details);
      case r'InternalServerException':
        throw Serializers.instance
            .deserialize<InternalServerException>($details);
      case _:
        switch ($response.statusCode) {
          case 400:
            throw BadRequestException($code);
          case _:
            throw InternalServerException($code);
        }
    }
  }

  Future<List<Task>> addTask({
    required String title,
    required String importance,
  }) async {
    final $response = await celest.httpClient.post(
      celest.baseUri.resolve('/tasks/add-task'),
      headers: const {'Content-Type': 'application/json; charset=utf-8'},
      body: jsonEncode({
        r'title': title,
        r'importance': importance,
      }),
    );
    final $body = (jsonDecode($response.body) as Map<String, Object?>);
    if ($response.statusCode == 200) {
      return ($body['response'] as Iterable<Object?>)
          .map((el) => Serializers.instance.deserialize<Task>(el))
          .toList();
    }
    final $error = ($body['error'] as Map<String, Object?>);
    final $code = ($error['code'] as String);
    final $details = ($error['details'] as Map<String, Object?>?);
    switch ($code) {
      case r'BadRequestException':
        throw Serializers.instance.deserialize<BadRequestException>($details);
      case r'InternalServerException':
        throw Serializers.instance
            .deserialize<InternalServerException>($details);
      case _:
        switch ($response.statusCode) {
          case 400:
            throw BadRequestException($code);
          case _:
            throw InternalServerException($code);
        }
    }
  }

  Future<List<Task>> deleteTask({required String id}) async {
    final $response = await celest.httpClient.post(
      celest.baseUri.resolve('/tasks/delete-task'),
      headers: const {'Content-Type': 'application/json; charset=utf-8'},
      body: jsonEncode({r'id': id}),
    );
    final $body = (jsonDecode($response.body) as Map<String, Object?>);
    if ($response.statusCode == 200) {
      return ($body['response'] as Iterable<Object?>)
          .map((el) => Serializers.instance.deserialize<Task>(el))
          .toList();
    }
    final $error = ($body['error'] as Map<String, Object?>);
    final $code = ($error['code'] as String);
    final $details = ($error['details'] as Map<String, Object?>?);
    switch ($code) {
      case r'BadRequestException':
        throw Serializers.instance.deserialize<BadRequestException>($details);
      case r'InternalServerException':
        throw Serializers.instance
            .deserialize<InternalServerException>($details);
      case _:
        switch ($response.statusCode) {
          case 400:
            throw BadRequestException($code);
          case _:
            throw InternalServerException($code);
        }
    }
  }

  Future<void> markAsCompleted({required String id}) async {
    final $response = await celest.httpClient.post(
      celest.baseUri.resolve('/tasks/mark-as-completed'),
      headers: const {'Content-Type': 'application/json; charset=utf-8'},
      body: jsonEncode({r'id': id}),
    );
    final $body = (jsonDecode($response.body) as Map<String, Object?>);
    if ($response.statusCode == 200) {
      return;
    }
    final $error = ($body['error'] as Map<String, Object?>);
    final $code = ($error['code'] as String);
    final $details = ($error['details'] as Map<String, Object?>?);
    switch ($code) {
      case r'BadRequestException':
        throw Serializers.instance.deserialize<BadRequestException>($details);
      case r'InternalServerException':
        throw Serializers.instance
            .deserialize<InternalServerException>($details);
      case _:
        switch ($response.statusCode) {
          case 400:
            throw BadRequestException($code);
          case _:
            throw InternalServerException($code);
        }
    }
  }

  Future<void> markAsIncomplete({required String id}) async {
    final $response = await celest.httpClient.post(
      celest.baseUri.resolve('/tasks/mark-as-incomplete'),
      headers: const {'Content-Type': 'application/json; charset=utf-8'},
      body: jsonEncode({r'id': id}),
    );
    final $body = (jsonDecode($response.body) as Map<String, Object?>);
    if ($response.statusCode == 200) {
      return;
    }
    final $error = ($body['error'] as Map<String, Object?>);
    final $code = ($error['code'] as String);
    final $details = ($error['details'] as Map<String, Object?>?);
    switch ($code) {
      case r'BadRequestException':
        throw Serializers.instance.deserialize<BadRequestException>($details);
      case r'InternalServerException':
        throw Serializers.instance
            .deserialize<InternalServerException>($details);
      case _:
        switch ($response.statusCode) {
          case 400:
            throw BadRequestException($code);
          case _:
            throw InternalServerException($code);
        }
    }
  }
}