import 'package:ddd_drive_flutter/presentation/todo_detail_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoDetailPage extends HookConsumerWidget {
  const TodoDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoItemProvider);
    final notifier = ref.read(todoItemProvider.notifier);
    final titleController = useTextEditingController(
        text: notifier.isNew() ? "" : state.title.value);
    final detailController = useTextEditingController(
        text: notifier.isNew() ? "" : state.detail.value);

    return Scaffold(
      appBar: AppBar(
        title: Text(notifier.isNew() ? '新規作成' : '編集画面'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'タイトル',
                hintText: 'やること',
              ),
              onChanged: (title) {
                notifier.changeTitle(title);
              },
              controller: titleController,
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: '詳細',
                hintText: 'やることの詳細',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                notifier.changeDetail(value);
              },
              controller: detailController,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                await notifier.onTapElevatedButton();
                Navigator.pop(context);
              },
              child: Text(notifier.isNew() ? '作成' : '更新'),
            )
          ],
        ),
      ),
    );
  }
}
