import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_payload.freezed.dart';
part 'calendar_payload.g.dart';

@freezed
class CalendarPayload with _$CalendarPayload {
  const factory CalendarPayload({
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') String? endDate,
  }) = _CalendarPayload;

  factory CalendarPayload.fromJson(Map<String, dynamic> json) =>
      _$CalendarPayloadFromJson(json);
}