import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_paging_model.freezed.dart';

part 'base_paging_model.g.dart';

@Freezed(genericArgumentFactories: true)
class BasePagingModel<T> with _$BasePagingModel<T> {
  const factory BasePagingModel({
    required int count,
    @JsonKey(name: 'previous') String? prev,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'results') required List<T> result,
  }) = _BasePagingModel<T>;

  factory BasePagingModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$BasePagingModelFromJson(json, fromJsonT);
}
