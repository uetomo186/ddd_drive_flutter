import 'package:ddd_drive_flutter/common/data_time_converter.dart';
import 'package:ddd_drive_flutter/domain/value/detail.dart';
import 'package:ddd_drive_flutter/domain/value/title.dart';
import 'package:ddd_drive_flutter/domain/value/todo_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';

part 'todo_item.g.dart';

@freezed
class TodoItem with _$TodoItem {
  const TodoItem._();

  factory TodoItem({
    @TodoIdConverter() required TodoId id,
    @TitleConverter() required Title title,
    @DetailConverter() required Detail detail,
    @Default(false) bool isDone,
    @DateTimeConverter() required DateTime createdAt,
  }) = _TodoItem;

  factory TodoItem.fromJson(Map<String, dynamic> json) =>
      _$TodoItemFromJson(json);

  factory TodoItem.initial() => TodoItem(
        id: const TodoId(null),
        title: const Title(""),
        detail: const Detail(""),
        createdAt: DateTime.now(),
      );

  TodoItem updateIsDone() {
    return copyWith(
      id: id,
      title: title,
      detail: detail,
      isDone: !isDone,
    );
  }
}
