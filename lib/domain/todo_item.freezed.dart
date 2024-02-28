// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoItem _$TodoItemFromJson(Map<String, dynamic> json) {
  return _TodoItem.fromJson(json);
}

/// @nodoc
mixin _$TodoItem {
  @TodoIdConverter()
  TodoId get id => throw _privateConstructorUsedError;
  @TitleConverter()
  Title get title => throw _privateConstructorUsedError;
  @DetailConverter()
  Detail get detail => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  @DataTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoItemCopyWith<TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemCopyWith<$Res> {
  factory $TodoItemCopyWith(TodoItem value, $Res Function(TodoItem) then) =
      _$TodoItemCopyWithImpl<$Res, TodoItem>;
  @useResult
  $Res call(
      {@TodoIdConverter() TodoId id,
      @TitleConverter() Title title,
      @DetailConverter() Detail detail,
      bool isDone,
      @DataTimeConverter() DateTime createdAt});

  $TodoIdCopyWith<$Res> get id;
  $TitleCopyWith<$Res> get title;
  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class _$TodoItemCopyWithImpl<$Res, $Val extends TodoItem>
    implements $TodoItemCopyWith<$Res> {
  _$TodoItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? detail = null,
    Object? isDone = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TodoId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoIdCopyWith<$Res> get id {
    return $TodoIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TitleCopyWith<$Res> get title {
    return $TitleCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailCopyWith<$Res> get detail {
    return $DetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodoItemImplCopyWith<$Res>
    implements $TodoItemCopyWith<$Res> {
  factory _$$TodoItemImplCopyWith(
          _$TodoItemImpl value, $Res Function(_$TodoItemImpl) then) =
      __$$TodoItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TodoIdConverter() TodoId id,
      @TitleConverter() Title title,
      @DetailConverter() Detail detail,
      bool isDone,
      @DataTimeConverter() DateTime createdAt});

  @override
  $TodoIdCopyWith<$Res> get id;
  @override
  $TitleCopyWith<$Res> get title;
  @override
  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$$TodoItemImplCopyWithImpl<$Res>
    extends _$TodoItemCopyWithImpl<$Res, _$TodoItemImpl>
    implements _$$TodoItemImplCopyWith<$Res> {
  __$$TodoItemImplCopyWithImpl(
      _$TodoItemImpl _value, $Res Function(_$TodoItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? detail = null,
    Object? isDone = null,
    Object? createdAt = null,
  }) {
    return _then(_$TodoItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TodoId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoItemImpl extends _TodoItem {
  _$TodoItemImpl(
      {@TodoIdConverter() required this.id,
      @TitleConverter() required this.title,
      @DetailConverter() required this.detail,
      this.isDone = false,
      @DataTimeConverter() required this.createdAt})
      : super._();

  factory _$TodoItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoItemImplFromJson(json);

  @override
  @TodoIdConverter()
  final TodoId id;
  @override
  @TitleConverter()
  final Title title;
  @override
  @DetailConverter()
  final Detail detail;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @DataTimeConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'TodoItem(id: $id, title: $title, detail: $detail, isDone: $isDone, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, detail, isDone, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoItemImplCopyWith<_$TodoItemImpl> get copyWith =>
      __$$TodoItemImplCopyWithImpl<_$TodoItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoItemImplToJson(
      this,
    );
  }
}

abstract class _TodoItem extends TodoItem {
  factory _TodoItem(
      {@TodoIdConverter() required final TodoId id,
      @TitleConverter() required final Title title,
      @DetailConverter() required final Detail detail,
      final bool isDone,
      @DataTimeConverter() required final DateTime createdAt}) = _$TodoItemImpl;
  _TodoItem._() : super._();

  factory _TodoItem.fromJson(Map<String, dynamic> json) =
      _$TodoItemImpl.fromJson;

  @override
  @TodoIdConverter()
  TodoId get id;
  @override
  @TitleConverter()
  Title get title;
  @override
  @DetailConverter()
  Detail get detail;
  @override
  bool get isDone;
  @override
  @DataTimeConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TodoItemImplCopyWith<_$TodoItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
