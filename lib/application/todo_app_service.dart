import 'package:ddd_drive_flutter/domain/todo_item.dart';
import 'package:ddd_drive_flutter/domain/value/todo_id.dart';
import 'package:ddd_drive_flutter/infrastructure/todo_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoAppService = Provider(
  (ref) => TodoAppService(
    todoListRepository: ref.read(todoListesRepository),
  ),
);

class TodoAppService {
  TodoAppService({required TodoListRepository todoListRepository})
      : _todoListRepository = todoListRepository;
  final TodoListRepository _todoListRepository;

  void subscribeTodoList(
    void Function(List<TodoItem>) onCompleted, {
    required void Function() onEmpty,
  }) {
    _todoListRepository.subscribeStream(
      onCompleted,
      onEmpty: onEmpty,
    );
  }

  Future<TodoItem> findByTodoId({required TodoId todoId}) async {
    return await _todoListRepository.findById(id: todoId.value ?? '');
  }
}
