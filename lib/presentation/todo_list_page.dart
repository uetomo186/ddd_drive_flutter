import 'package:ddd_drive_flutter/presentation/todo_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoListPage extends HookConsumerWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoListProvider);
    final notifier = ref.read(todoListProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List Page'),
      ),
      body: ListView(
        children: state.todoList
            .map(
              (item) => InkWell(
                child: ListTile(
                  leading: Checkbox(
                    value: item.isDone,
                    onChanged: (bool? value) async {
                      await notifier.onTapCheckBox(item: item);
                    },
                  ),
                  title: RichText(
                    text: TextSpan(
                      text: item.title.value,
                      style: const TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  notifier.onTapItem(context, ref, item);
                },
                onLongPress: () async {
                  await notifier.onLongPressItem(context: context, item: item);
                },
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          notifier.onTapFAB(context, ref);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
