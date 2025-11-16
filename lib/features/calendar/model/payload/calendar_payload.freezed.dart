// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalendarPayload _$CalendarPayloadFromJson(Map<String, dynamic> json) {
  return _CalendarPayload.fromJson(json);
}

/// @nodoc
mixin _$CalendarPayload {
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;

  /// Serializes this CalendarPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalendarPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarPayloadCopyWith<CalendarPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarPayloadCopyWith<$Res> {
  factory $CalendarPayloadCopyWith(
          CalendarPayload value, $Res Function(CalendarPayload) then) =
      _$CalendarPayloadCopyWithImpl<$Res, CalendarPayload>;
  @useResult
  $Res call(
      {@JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String? endDate});
}

/// @nodoc
class _$CalendarPayloadCopyWithImpl<$Res, $Val extends CalendarPayload>
    implements $CalendarPayloadCopyWith<$Res> {
  _$CalendarPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarPayloadImplCopyWith<$Res>
    implements $CalendarPayloadCopyWith<$Res> {
  factory _$$CalendarPayloadImplCopyWith(_$CalendarPayloadImpl value,
          $Res Function(_$CalendarPayloadImpl) then) =
      __$$CalendarPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String? endDate});
}

/// @nodoc
class __$$CalendarPayloadImplCopyWithImpl<$Res>
    extends _$CalendarPayloadCopyWithImpl<$Res, _$CalendarPayloadImpl>
    implements _$$CalendarPayloadImplCopyWith<$Res> {
  __$$CalendarPayloadImplCopyWithImpl(
      _$CalendarPayloadImpl _value, $Res Function(_$CalendarPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = freezed,
  }) {
    return _then(_$CalendarPayloadImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarPayloadImpl implements _CalendarPayload {
  const _$CalendarPayloadImpl(
      {@JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') this.endDate});

  factory _$CalendarPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarPayloadImplFromJson(json);

  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;

  @override
  String toString() {
    return 'CalendarPayload(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarPayloadImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  /// Create a copy of CalendarPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarPayloadImplCopyWith<_$CalendarPayloadImpl> get copyWith =>
      __$$CalendarPayloadImplCopyWithImpl<_$CalendarPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarPayloadImplToJson(
      this,
    );
  }
}

abstract class _CalendarPayload implements CalendarPayload {
  const factory _CalendarPayload(
          {@JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') final String? endDate}) =
      _$CalendarPayloadImpl;

  factory _CalendarPayload.fromJson(Map<String, dynamic> json) =
      _$CalendarPayloadImpl.fromJson;

  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;

  /// Create a copy of CalendarPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarPayloadImplCopyWith<_$CalendarPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
