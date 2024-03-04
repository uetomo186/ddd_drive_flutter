import 'dart:ffi';
import 'dart:math';

import 'package:ddd_drive_flutter/domain/todo_item.dart';
import 'package:ddd_drive_flutter/domain/value/todo_id.dart';
import 'package:ddd_drive_flutter/infrastructure/todo_list_repository.dart';

class TodoListRepositoryMem implements TodoListRepository {
  final Map<String, TodoItem> _data = {};
  late String nextId;

  void reset() {
    nextId = '';
    _data.clear();
  }

  void set(List<TodoItem> list) {
    for (final element in list) {
      _data[element.id.value!] = element;
    }
  }

  Map<String, TodoItem> get() {
    return _data;
  }

  @override
  Future<void> disposeStream() async {}

  @override
  void subscrideStream(
    void Function(List<TodoItem>) onCompleted, {
    required void Function() onEmpty,
  }) {}

  @override
  Future<TodoItem> findById({required String id}) async {
    return await Future.value(_data[id]);
  }

  @override
  Future<void> create({required TodoItem item}) async {
    while (true) {
      final rand = Random(DateTime.now().millisecondsSinceEpoch);
      nextId = rand.nextInt(42943213).toString();
      if (!_data.containsKey(nextId)) {
        _data[nextId] = item.copyWith(
          id: TodoId(nextId),
          title: item.title,
          detail: item.detail,
          isDone: item.isDone,
          createdAt: item.createdAt,
        );
        break;
      }
    }
  }

  @override
  Future<void> update({required TodoItem item}) async {
    _data[item.id.value!] = item;
  }

  @override
  Future<void> delete({required TodoId item}) async {
    _data.remove(item.id.value);
  }
}
