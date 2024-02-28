// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoItemImpl _$$TodoItemImplFromJson(Map<String, dynamic> json) =>
    _$TodoItemImpl(
      id: const TodoIdConverter().fromJson(json['id'] as String),
      title: const TitleConverter().fromJson(json['title'] as String),
      detail: const DetailConverter().fromJson(json['detail'] as String),
      isDone: json['isDone'] as bool? ?? false,
      createdAt:
          const DataTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$$TodoItemImplToJson(_$TodoItemImpl instance) =>
    <String, dynamic>{
      'id': const TodoIdConverter().toJson(instance.id),
      'title': const TitleConverter().toJson(instance.title),
      'detail': const DetailConverter().toJson(instance.detail),
      'isDone': instance.isDone,
      'createdAt': const DataTimeConverter().toJson(instance.createdAt),
    };
