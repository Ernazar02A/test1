import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/error/error_entity.dart';

part 'ui_state.freezed.dart';

// @freezed
// class UIState with _$UIState {
//   const factory UIState.idle() = Idle;
//
//   const factory UIState.loading() = Loading;
//
//   const factory UIState.success({T? data}) = Success;
//
//   const factory UIState.error(ErrorEntity message) = Error;
// }

@freezed
class UIState<T> with _$UIState<T> {
  const factory UIState.idle() = Idle<T>;
  const factory UIState.loading() = Loading<T>;
  const factory UIState.success({T? data}) = Success<T>;
  const factory UIState.error({ErrorEntity? error}) = Error<T>;
}

extension UIStateExtension<T> on UIState<T> {
  bool get isLoading => this is Loading<T>;
  bool get isSuccess => this is Success<T>;
  bool get isError => this is Error<T>;
  bool get isIdle => this is Idle<T>;

  /// Get data if success, null otherwise
  T? get dataOrNull => maybeWhen(
    success: (data) => data,
    orElse: () => null,
  );

  /// Get error message if error, null otherwise
  ErrorEntity? get errorOrNull => maybeWhen(
    error: (message) => message,
    orElse: () => null,
  );
}
