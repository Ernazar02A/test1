// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidationErrorModel _$ValidationErrorModelFromJson(Map<String, dynamic> json) {
  return _ValidationErrorModel.fromJson(json);
}

/// @nodoc
mixin _$ValidationErrorModel {
  int get code => throw _privateConstructorUsedError;

  /// Serializes this ValidationErrorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationErrorModelCopyWith<ValidationErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorModelCopyWith<$Res> {
  factory $ValidationErrorModelCopyWith(ValidationErrorModel value,
          $Res Function(ValidationErrorModel) then) =
      _$ValidationErrorModelCopyWithImpl<$Res, ValidationErrorModel>;
  @useResult
  $Res call({int code});
}

/// @nodoc
class _$ValidationErrorModelCopyWithImpl<$Res,
        $Val extends ValidationErrorModel>
    implements $ValidationErrorModelCopyWith<$Res> {
  _$ValidationErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationErrorModelImplCopyWith<$Res>
    implements $ValidationErrorModelCopyWith<$Res> {
  factory _$$ValidationErrorModelImplCopyWith(_$ValidationErrorModelImpl value,
          $Res Function(_$ValidationErrorModelImpl) then) =
      __$$ValidationErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code});
}

/// @nodoc
class __$$ValidationErrorModelImplCopyWithImpl<$Res>
    extends _$ValidationErrorModelCopyWithImpl<$Res, _$ValidationErrorModelImpl>
    implements _$$ValidationErrorModelImplCopyWith<$Res> {
  __$$ValidationErrorModelImplCopyWithImpl(_$ValidationErrorModelImpl _value,
      $Res Function(_$ValidationErrorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$ValidationErrorModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationErrorModelImpl implements _ValidationErrorModel {
  const _$ValidationErrorModelImpl({required this.code});

  factory _$ValidationErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationErrorModelImplFromJson(json);

  @override
  final int code;

  @override
  String toString() {
    return 'ValidationErrorModel(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorModelImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of ValidationErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorModelImplCopyWith<_$ValidationErrorModelImpl>
      get copyWith =>
          __$$ValidationErrorModelImplCopyWithImpl<_$ValidationErrorModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationErrorModelImplToJson(
      this,
    );
  }
}

abstract class _ValidationErrorModel implements ValidationErrorModel {
  const factory _ValidationErrorModel({required final int code}) =
      _$ValidationErrorModelImpl;

  factory _ValidationErrorModel.fromJson(Map<String, dynamic> json) =
      _$ValidationErrorModelImpl.fromJson;

  @override
  int get code;

  /// Create a copy of ValidationErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorModelImplCopyWith<_$ValidationErrorModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
