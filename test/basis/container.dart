import 'package:ddd_drive_flutter/infrastructure/todo_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'todo_list_repository_men.dart';

ProviderContainer overrideTodoListRepositoryProvider() {
  return ProviderContainer(overrides: [
    todoListesRepository.overrideWith(
      Provider((ref) => TodoListRepositoryMem()),
    ),
  ]);
}
