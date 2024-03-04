import 'package:ddd_drive_flutter/domain/todo_item.dart';
import 'package:ddd_drive_flutter/domain/value/detail.dart';
import 'package:ddd_drive_flutter/domain/value/title.dart';
import 'package:ddd_drive_flutter/domain/value/todo_id.dart';

List<TodoItem> dummyTodoList = [
  TodoItem(
    id: const TodoId('0000000'),
    title: const Title('テストタイトル0'),
    detail: const Detail('テストの値0'),
    isDone: false,
    createdAt: DateTime(0),
  ),
  TodoItem(
    id: const TodoId('1111111'),
    title: const Title('テストタイトル１'),
    detail: const Detail('テストの値1'),
    isDone: false,
    createdAt: DateTime(1),
  ),
  TodoItem(
    id: const TodoId('22222222'),
    title: const Title('テストタイトル2'),
    detail: const Detail('テストの値2'),
    isDone: false,
    createdAt: DateTime(2),
  ),
  TodoItem(
    id: const TodoId('333333333'),
    title: const Title('テストタイトル3'),
    detail: const Detail('テストの値3'),
    isDone: false,
    createdAt: DateTime(3),
  ),
  TodoItem(
    id: const TodoId('4444444444'),
    title: const Title('テストタイトル4'),
    detail: const Detail('テストの値4'),
    isDone: false,
    createdAt: DateTime(4),
  ),
  TodoItem(
    id: const TodoId('55555555555'),
    title: const Title('テストタイトル5'),
    detail: const Detail('テストの値5'),
    isDone: false,
    createdAt: DateTime(5),
  ),
];
