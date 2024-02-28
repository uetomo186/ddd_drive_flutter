import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list_state.freezed.dart';

@freezed
class TodoListState with _$TodoListState {
  const factory TodoListState({
    @Default(false) bool isFetching,
    @Default(<TodoItem>[]) List<TodoItem> todolist,
  }) = _TodoListState;
}
