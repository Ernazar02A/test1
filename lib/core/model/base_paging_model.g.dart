// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_paging_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasePagingModelImpl<T> _$$BasePagingModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BasePagingModelImpl<T>(
      count: (json['count'] as num).toInt(),
      prev: json['previous'] as String?,
      next: json['next'] as String?,
      result: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$BasePagingModelImplToJson<T>(
  _$BasePagingModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'count': instance.count,
      'previous': instance.prev,
      'next': instance.next,
      'results': instance.result.map(toJsonT).toList(),
    };
