import 'package:ddd_drive_flutter/application/state/todo_list_state.dart';
import 'package:ddd_drive_flutter/application/todo_app_service.dart';

import 'package:ddd_drive_flutter/domain/todo_item.dart';
import 'package:ddd_drive_flutter/presentation/todo_detail_notifier.dart';
import 'package:ddd_drive_flutter/presentation/todo_detail_page.dart';
import 'package:ddd_drive_flutter/presentation/widget/confirm_dialog.dart';
import 'package:flutter/material.dart';
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
    state = state.copyWith(isFetching: false, todoList: []);
  }

  void _onFetched(List<TodoItem> todolist) {
    state = state.copyWith(
        isFetching: false,
        todoList: todolist
            .map(
              (item) => TodoItem(
                  id: item.id,
                  title: item.title,
                  detail: item.detail,
                  createdAt: item.createdAt),
            )
            .toList());
  }

  void onTapItem(BuildContext context, WidgetRef ref, TodoItem item) {
    ref.read(todoItemProvider.notifier).setTodoItem(item);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const TodoDetailPage(),
      ),
    );
  }

  Future<void> onLongPressItem({
    required BuildContext context,
    required TodoItem item,
  }) async {
    final result = await showDialog(
        context: context,
        builder: (context) {
          return const ConfirmDialog(title: '削除してもよろしいですか？');
        });
    if (result) await _todoAppService.deleteTodoItem(todoId: item.id);
  }

  Future<void> onTapCheckBox({required TodoItem item}) async {
    await _todoAppService.updateIsDone(todoId: item.id);
  }

  void onTapFAB(BuildContext context, WidgetRef ref) {
    ref.read(todoItemProvider.notifier).reset();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const TodoDetailPage()));
  }
}
