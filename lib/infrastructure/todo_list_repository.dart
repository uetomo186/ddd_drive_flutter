import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd_drive_flutter/domain/todo_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoListesRepository = Provider((ref) => TodoListRepository());

class TodoListRepository {
  final _db = FirebaseFirestore.instance;
  late Stream<QuerySnapshot>? _stream;
  late StreamSubscription? _streamListener;

  Future<void> disposeStream() async {
    if (_streamListener != null) {
      await _streamListener?.cancel();
    }
    _stream = null;
  }

  void subscribeStream(
    void Function(List<TodoItem>) onCompleted, {
    required void Function() onEmpty,
  }) {
    _stream = _db.collection('todo-list').snapshots();
    _streamListener = _stream?.listen((snapshot) {
      if (snapshot.size != 0) {
        onCompleted(snapshot.docs.map((item) {
          return TodoItem.fromJson(_jsonFromSnapshot(item));
        }).toList());
      } else {
        onEmpty();
      }
    });
  }

  Future<TodoItem> findById({required String id}) async {
    final collectionRef = _db.collection('todo-list');
    final doc = await collectionRef.doc(id).get();
    return TodoItem.fromJson(_jsonFromSnapshot(doc));
  }

  Future<void> create({required TodoItem item}) async {
    final collectionRef = _db.collection('todo-list');
    await collectionRef.add(_convertDateTimeToTimestamp(item.toJson()));
  }

  Future<void> update({required TodoItem item}) async {
    final collectionRef = _db.collection('todo-list');
    await collectionRef
        .doc(item.id.value)
        .update(_convertDateTimeToTimestamp(item.toJson()));
  }

  Future<void> delete({required TodoItem item}) async {
    final collectionRef = _db.collection('todo-list');
    await collectionRef.doc(item.id.value).delete();
  }

  Map<String, dynamic> _convertDateTimeToTimestamp(Map<String, dynamic> json) {
    final createdAt = DateTime.parse(json['createdAt']);
    return {
      'id': json['id'],
      'title': json['title'],
      'detail': json['detail'],
      'isDone': json['isDone'],
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }

  Map<String, dynamic> _jsonFromSnapshot<T extends DocumentSnapshot>(T json) {
    final createdAt = (json['createdAt'] as Timestamp).toDate().toLocal();
    return {
      'id': json.id,
      'title': json['title'],
      'detail': json['detail'],
      'isDone': json['isDone'],
      'createdAt': createdAt.toString(),
    };
  }
}
