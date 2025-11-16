import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_model.freezed.dart';
part 'calendar_model.g.dart';

@freezed
class CalendarModel with _$CalendarModel {
  const factory CalendarModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'location') String? location,
  }) = _CalendarModel;

  factory CalendarModel.fromJson(Map<String, dynamic> json) =>
      _$CalendarModelFromJson(json);
}

// Alias for better naming
typedef EventModel = CalendarModel;