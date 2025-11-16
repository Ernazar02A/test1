// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(DateTime date) updateStartDate,
    required TResult Function(DateTime date) updateEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(DateTime date)? updateStartDate,
    TResult? Function(DateTime date)? updateEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(DateTime date)? updateStartDate,
    TResult Function(DateTime date)? updateEndDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(UpdateStartDate value) updateStartDate,
    required TResult Function(UpdateEndDate value) updateEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(UpdateStartDate value)? updateStartDate,
    TResult? Function(UpdateEndDate value)? updateEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEvents value)? getEvents,
    TResult Function(UpdateStartDate value)? updateStartDate,
    TResult Function(UpdateEndDate value)? updateEndDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetEventsImplCopyWith<$Res> {
  factory _$$GetEventsImplCopyWith(
          _$GetEventsImpl value, $Res Function(_$GetEventsImpl) then) =
      __$$GetEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEventsImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$GetEventsImpl>
    implements _$$GetEventsImplCopyWith<$Res> {
  __$$GetEventsImplCopyWithImpl(
      _$GetEventsImpl _value, $Res Function(_$GetEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetEventsImpl implements GetEvents {
  const _$GetEventsImpl();

  @override
  String toString() {
    return 'CalendarEvent.getEvents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(DateTime date) updateStartDate,
    required TResult Function(DateTime date) updateEndDate,
  }) {
    return getEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(DateTime date)? updateStartDate,
    TResult? Function(DateTime date)? updateEndDate,
  }) {
    return getEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(DateTime date)? updateStartDate,
    TResult Function(DateTime date)? updateEndDate,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(UpdateStartDate value) updateStartDate,
    required TResult Function(UpdateEndDate value) updateEndDate,
  }) {
    return getEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(UpdateStartDate value)? updateStartDate,
    TResult? Function(UpdateEndDate value)? updateEndDate,
  }) {
    return getEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEvents value)? getEvents,
    TResult Function(UpdateStartDate value)? updateStartDate,
    TResult Function(UpdateEndDate value)? updateEndDate,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(this);
    }
    return orElse();
  }
}

abstract class GetEvents implements CalendarEvent {
  const factory GetEvents() = _$GetEventsImpl;
}

/// @nodoc
abstract class _$$UpdateStartDateImplCopyWith<$Res> {
  factory _$$UpdateStartDateImplCopyWith(_$UpdateStartDateImpl value,
          $Res Function(_$UpdateStartDateImpl) then) =
      __$$UpdateStartDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$UpdateStartDateImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$UpdateStartDateImpl>
    implements _$$UpdateStartDateImplCopyWith<$Res> {
  __$$UpdateStartDateImplCopyWithImpl(
      _$UpdateStartDateImpl _value, $Res Function(_$UpdateStartDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$UpdateStartDateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateStartDateImpl implements UpdateStartDate {
  const _$UpdateStartDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'CalendarEvent.updateStartDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStartDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStartDateImplCopyWith<_$UpdateStartDateImpl> get copyWith =>
      __$$UpdateStartDateImplCopyWithImpl<_$UpdateStartDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(DateTime date) updateStartDate,
    required TResult Function(DateTime date) updateEndDate,
  }) {
    return updateStartDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(DateTime date)? updateStartDate,
    TResult? Function(DateTime date)? updateEndDate,
  }) {
    return updateStartDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(DateTime date)? updateStartDate,
    TResult Function(DateTime date)? updateEndDate,
    required TResult orElse(),
  }) {
    if (updateStartDate != null) {
      return updateStartDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(UpdateStartDate value) updateStartDate,
    required TResult Function(UpdateEndDate value) updateEndDate,
  }) {
    return updateStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(UpdateStartDate value)? updateStartDate,
    TResult? Function(UpdateEndDate value)? updateEndDate,
  }) {
    return updateStartDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEvents value)? getEvents,
    TResult Function(UpdateStartDate value)? updateStartDate,
    TResult Function(UpdateEndDate value)? updateEndDate,
    required TResult orElse(),
  }) {
    if (updateStartDate != null) {
      return updateStartDate(this);
    }
    return orElse();
  }
}

abstract class UpdateStartDate implements CalendarEvent {
  const factory UpdateStartDate(final DateTime date) = _$UpdateStartDateImpl;

  DateTime get date;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStartDateImplCopyWith<_$UpdateStartDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEndDateImplCopyWith<$Res> {
  factory _$$UpdateEndDateImplCopyWith(
          _$UpdateEndDateImpl value, $Res Function(_$UpdateEndDateImpl) then) =
      __$$UpdateEndDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$UpdateEndDateImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$UpdateEndDateImpl>
    implements _$$UpdateEndDateImplCopyWith<$Res> {
  __$$UpdateEndDateImplCopyWithImpl(
      _$UpdateEndDateImpl _value, $Res Function(_$UpdateEndDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$UpdateEndDateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateEndDateImpl implements UpdateEndDate {
  const _$UpdateEndDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'CalendarEvent.updateEndDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEndDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEndDateImplCopyWith<_$UpdateEndDateImpl> get copyWith =>
      __$$UpdateEndDateImplCopyWithImpl<_$UpdateEndDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(DateTime date) updateStartDate,
    required TResult Function(DateTime date) updateEndDate,
  }) {
    return updateEndDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(DateTime date)? updateStartDate,
    TResult? Function(DateTime date)? updateEndDate,
  }) {
    return updateEndDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(DateTime date)? updateStartDate,
    TResult Function(DateTime date)? updateEndDate,
    required TResult orElse(),
  }) {
    if (updateEndDate != null) {
      return updateEndDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(UpdateStartDate value) updateStartDate,
    required TResult Function(UpdateEndDate value) updateEndDate,
  }) {
    return updateEndDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(UpdateStartDate value)? updateStartDate,
    TResult? Function(UpdateEndDate value)? updateEndDate,
  }) {
    return updateEndDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEvents value)? getEvents,
    TResult Function(UpdateStartDate value)? updateStartDate,
    TResult Function(UpdateEndDate value)? updateEndDate,
    required TResult orElse(),
  }) {
    if (updateEndDate != null) {
      return updateEndDate(this);
    }
    return orElse();
  }
}

abstract class UpdateEndDate implements CalendarEvent {
  const factory UpdateEndDate(final DateTime date) = _$UpdateEndDateImpl;

  DateTime get date;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEndDateImplCopyWith<_$UpdateEndDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarState {
  DateTime? get startDate => throw _privateConstructorUsedError;
  ValidationErrorType? get startDateError => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  ValidationErrorType? get endDateError => throw _privateConstructorUsedError;
  UIState<dynamic> get getEventsState => throw _privateConstructorUsedError;
  List<CalendarModel> get eventsList => throw _privateConstructorUsedError;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call(
      {DateTime? startDate,
      ValidationErrorType? startDateError,
      DateTime? endDate,
      ValidationErrorType? endDateError,
      UIState<dynamic> getEventsState,
      List<CalendarModel> eventsList});

  $UIStateCopyWith<dynamic, $Res> get getEventsState;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? startDateError = freezed,
    Object? endDate = freezed,
    Object? endDateError = freezed,
    Object? getEventsState = null,
    Object? eventsList = null,
  }) {
    return _then(_value.copyWith(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDateError: freezed == startDateError
          ? _value.startDateError
          : startDateError // ignore: cast_nullable_to_non_nullable
              as ValidationErrorType?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateError: freezed == endDateError
          ? _value.endDateError
          : endDateError // ignore: cast_nullable_to_non_nullable
              as ValidationErrorType?,
      getEventsState: null == getEventsState
          ? _value.getEventsState
          : getEventsState // ignore: cast_nullable_to_non_nullable
              as UIState<dynamic>,
      eventsList: null == eventsList
          ? _value.eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<CalendarModel>,
    ) as $Val);
  }

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UIStateCopyWith<dynamic, $Res> get getEventsState {
    return $UIStateCopyWith<dynamic, $Res>(_value.getEventsState, (value) {
      return _then(_value.copyWith(getEventsState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventsStateImplCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$EventsStateImplCopyWith(
          _$EventsStateImpl value, $Res Function(_$EventsStateImpl) then) =
      __$$EventsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startDate,
      ValidationErrorType? startDateError,
      DateTime? endDate,
      ValidationErrorType? endDateError,
      UIState<dynamic> getEventsState,
      List<CalendarModel> eventsList});

  @override
  $UIStateCopyWith<dynamic, $Res> get getEventsState;
}

/// @nodoc
class __$$EventsStateImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$EventsStateImpl>
    implements _$$EventsStateImplCopyWith<$Res> {
  __$$EventsStateImplCopyWithImpl(
      _$EventsStateImpl _value, $Res Function(_$EventsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? startDateError = freezed,
    Object? endDate = freezed,
    Object? endDateError = freezed,
    Object? getEventsState = null,
    Object? eventsList = null,
  }) {
    return _then(_$EventsStateImpl(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDateError: freezed == startDateError
          ? _value.startDateError
          : startDateError // ignore: cast_nullable_to_non_nullable
              as ValidationErrorType?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateError: freezed == endDateError
          ? _value.endDateError
          : endDateError // ignore: cast_nullable_to_non_nullable
              as ValidationErrorType?,
      getEventsState: null == getEventsState
          ? _value.getEventsState
          : getEventsState // ignore: cast_nullable_to_non_nullable
              as UIState<dynamic>,
      eventsList: null == eventsList
          ? _value._eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<CalendarModel>,
    ));
  }
}

/// @nodoc

class _$EventsStateImpl implements _EventsState {
  const _$EventsStateImpl(
      {this.startDate = null,
      this.startDateError = null,
      this.endDate = null,
      this.endDateError = null,
      this.getEventsState = const UIState.idle(),
      required final List<CalendarModel> eventsList})
      : _eventsList = eventsList;

  @override
  @JsonKey()
  final DateTime? startDate;
  @override
  @JsonKey()
  final ValidationErrorType? startDateError;
  @override
  @JsonKey()
  final DateTime? endDate;
  @override
  @JsonKey()
  final ValidationErrorType? endDateError;
  @override
  @JsonKey()
  final UIState<dynamic> getEventsState;
  final List<CalendarModel> _eventsList;
  @override
  List<CalendarModel> get eventsList {
    if (_eventsList is EqualUnmodifiableListView) return _eventsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsList);
  }

  @override
  String toString() {
    return 'CalendarState(startDate: $startDate, startDateError: $startDateError, endDate: $endDate, endDateError: $endDateError, getEventsState: $getEventsState, eventsList: $eventsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsStateImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.startDateError, startDateError) ||
                other.startDateError == startDateError) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.endDateError, endDateError) ||
                other.endDateError == endDateError) &&
            (identical(other.getEventsState, getEventsState) ||
                other.getEventsState == getEventsState) &&
            const DeepCollectionEquality()
                .equals(other._eventsList, _eventsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      startDate,
      startDateError,
      endDate,
      endDateError,
      getEventsState,
      const DeepCollectionEquality().hash(_eventsList));

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsStateImplCopyWith<_$EventsStateImpl> get copyWith =>
      __$$EventsStateImplCopyWithImpl<_$EventsStateImpl>(this, _$identity);
}

abstract class _EventsState implements CalendarState {
  const factory _EventsState(
      {final DateTime? startDate,
      final ValidationErrorType? startDateError,
      final DateTime? endDate,
      final ValidationErrorType? endDateError,
      final UIState<dynamic> getEventsState,
      required final List<CalendarModel> eventsList}) = _$EventsStateImpl;

  @override
  DateTime? get startDate;
  @override
  ValidationErrorType? get startDateError;
  @override
  DateTime? get endDate;
  @override
  ValidationErrorType? get endDateError;
  @override
  UIState<dynamic> get getEventsState;
  @override
  List<CalendarModel> get eventsList;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventsStateImplCopyWith<_$EventsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
