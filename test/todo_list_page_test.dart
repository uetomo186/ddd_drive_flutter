import 'package:ddd_drive_flutter/infrastructure/todo_list_repository.dart';
import 'package:ddd_drive_flutter/presentation/todo_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'basis/container.dart';
import 'basis/todo_list_repository_men.dart';

void main() {
  late ProviderContainer _container;
  late TodoListRepositoryMem _repository;

  setUp(() {
    _container = overrideTodoListRepository();
    _repository =
        _container.read(todoListesRepository) as TodoListRepositoryMem;
    _repository.reset();
  });

  testWidgets('画面遷移は正しく行われています。', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          todoListesRepository.overrideWithValue(TodoListRepositoryMem())
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const TodoListPage(),
        ),
      ),
    );
    expect(find.text('Todolist'), findsOneWidget);
    await tester.pumpAndSettle();
    expect(find.byType(TodoListPage), findsOneWidget);
  });
}
