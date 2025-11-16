// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarPayloadImpl _$$CalendarPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarPayloadImpl(
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$$CalendarPayloadImplToJson(
        _$CalendarPayloadImpl instance) =>
    <String, dynamic>{
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };
