import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_error_model.freezed.dart';
part 'validation_error_model.g.dart';

@freezed
class ValidationErrorModel with _$ValidationErrorModel {
  const factory ValidationErrorModel({
    required int code,
  }) = _ValidationErrorModel;

  factory ValidationErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorModelFromJson(json);
}
