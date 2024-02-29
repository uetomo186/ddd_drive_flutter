import 'package:ddd_drive_flutter/application/todo_app_service.dart';
import 'package:ddd_drive_flutter/application/todo_list_state.dart';
import 'package:ddd_drive_flutter/domain/todo_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoListProvider = StateNotifierProvider<TodoListNotifier, TodoListState>(
    (ref) => TodoListNotifier(
          todoAppService: ref.watch(todoAppService),
        )..init());

class TodoListNotifier extends StateNotifier<TodoListState> {
  TodoListNotifier({required TodoAppService todoAppService})
      : _todoAppService = todoAppService,
        super(const TodoListState());

  final TodoAppService _todoAppService;

  void init() {
    state = state.copyWith(isFetching: true);
    _todoAppService.subscribeTodoList(_onFetched, onEmpty: _dispose);
  }

  void _dispose() {
    state = state.copyWith(isFetching: false, todolist: []);
  }

  void _onFetched(List<TodoItem> todolist) {
    state = state.copyWith(
        isFetching: false,
        todolist: todolist
            .map(
              (item) => TodoItem(
                  id: item.id,
                  title: item.title,
                  detail: item.detail,
                  createdAt: item.createdAt),
            )
            .toList());
  }
}
