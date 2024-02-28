// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoId {
  String? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoIdCopyWith<TodoId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoIdCopyWith<$Res> {
  factory $TodoIdCopyWith(TodoId value, $Res Function(TodoId) then) =
      _$TodoIdCopyWithImpl<$Res, TodoId>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class _$TodoIdCopyWithImpl<$Res, $Val extends TodoId>
    implements $TodoIdCopyWith<$Res> {
  _$TodoIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoIdImplCopyWith<$Res> implements $TodoIdCopyWith<$Res> {
  factory _$$TodoIdImplCopyWith(
          _$TodoIdImpl value, $Res Function(_$TodoIdImpl) then) =
      __$$TodoIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$TodoIdImplCopyWithImpl<$Res>
    extends _$TodoIdCopyWithImpl<$Res, _$TodoIdImpl>
    implements _$$TodoIdImplCopyWith<$Res> {
  __$$TodoIdImplCopyWithImpl(
      _$TodoIdImpl _value, $Res Function(_$TodoIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$TodoIdImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TodoIdImpl implements _TodoId {
  const _$TodoIdImpl([this.value]);

  @override
  final String? value;

  @override
  String toString() {
    return 'TodoId(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoIdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoIdImplCopyWith<_$TodoIdImpl> get copyWith =>
      __$$TodoIdImplCopyWithImpl<_$TodoIdImpl>(this, _$identity);
}

abstract class _TodoId implements TodoId {
  const factory _TodoId([final String? value]) = _$TodoIdImpl;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$TodoIdImplCopyWith<_$TodoIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
