// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_paging_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasePagingModel<T> _$BasePagingModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BasePagingModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BasePagingModel<T> {
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  String? get prev => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<T> get result => throw _privateConstructorUsedError;

  /// Serializes this BasePagingModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BasePagingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasePagingModelCopyWith<T, BasePagingModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePagingModelCopyWith<T, $Res> {
  factory $BasePagingModelCopyWith(
          BasePagingModel<T> value, $Res Function(BasePagingModel<T>) then) =
      _$BasePagingModelCopyWithImpl<T, $Res, BasePagingModel<T>>;
  @useResult
  $Res call(
      {int count,
      @JsonKey(name: 'previous') String? prev,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'results') List<T> result});
}

/// @nodoc
class _$BasePagingModelCopyWithImpl<T, $Res, $Val extends BasePagingModel<T>>
    implements $BasePagingModelCopyWith<T, $Res> {
  _$BasePagingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasePagingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? prev = freezed,
    Object? next = freezed,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasePagingModelImplCopyWith<T, $Res>
    implements $BasePagingModelCopyWith<T, $Res> {
  factory _$$BasePagingModelImplCopyWith(_$BasePagingModelImpl<T> value,
          $Res Function(_$BasePagingModelImpl<T>) then) =
      __$$BasePagingModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int count,
      @JsonKey(name: 'previous') String? prev,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'results') List<T> result});
}

/// @nodoc
class __$$BasePagingModelImplCopyWithImpl<T, $Res>
    extends _$BasePagingModelCopyWithImpl<T, $Res, _$BasePagingModelImpl<T>>
    implements _$$BasePagingModelImplCopyWith<T, $Res> {
  __$$BasePagingModelImplCopyWithImpl(_$BasePagingModelImpl<T> _value,
      $Res Function(_$BasePagingModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BasePagingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? prev = freezed,
    Object? next = freezed,
    Object? result = null,
  }) {
    return _then(_$BasePagingModelImpl<T>(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BasePagingModelImpl<T> implements _BasePagingModel<T> {
  const _$BasePagingModelImpl(
      {required this.count,
      @JsonKey(name: 'previous') this.prev,
      @JsonKey(name: 'next') this.next,
      @JsonKey(name: 'results') required final List<T> result})
      : _result = result;

  factory _$BasePagingModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BasePagingModelImplFromJson(json, fromJsonT);

  @override
  final int count;
  @override
  @JsonKey(name: 'previous')
  final String? prev;
  @override
  @JsonKey(name: 'next')
  final String? next;
  final List<T> _result;
  @override
  @JsonKey(name: 'results')
  List<T> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'BasePagingModel<$T>(count: $count, prev: $prev, next: $next, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasePagingModelImpl<T> &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, prev, next,
      const DeepCollectionEquality().hash(_result));

  /// Create a copy of BasePagingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasePagingModelImplCopyWith<T, _$BasePagingModelImpl<T>> get copyWith =>
      __$$BasePagingModelImplCopyWithImpl<T, _$BasePagingModelImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BasePagingModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _BasePagingModel<T> implements BasePagingModel<T> {
  const factory _BasePagingModel(
          {required final int count,
          @JsonKey(name: 'previous') final String? prev,
          @JsonKey(name: 'next') final String? next,
          @JsonKey(name: 'results') required final List<T> result}) =
      _$BasePagingModelImpl<T>;

  factory _BasePagingModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BasePagingModelImpl<T>.fromJson;

  @override
  int get count;
  @override
  @JsonKey(name: 'previous')
  String? get prev;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(name: 'results')
  List<T> get result;

  /// Create a copy of BasePagingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasePagingModelImplCopyWith<T, _$BasePagingModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
