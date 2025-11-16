import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test1/core/model/base_paging_model.dart';
import '../utils/either.dart';
import '../error/error_entity.dart';
import '../../core_ui/state/ui_state.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  BaseBloc(super.initialState);

  void _handleEither<T>({
    required Either<ErrorEntity, T> either,
    required void Function(T data) onSuccess,
    required void Function(ErrorEntity error) onError,
  }) {
    either.fold(
      (error) => onError(error),
      (data) => onSuccess(data),
    );
  }

  Future<void> handleRequest<T>({
    required Future<Either<ErrorEntity, T>> Function() operation,
    required void Function(UIState newState) onStateUpdate,
    void Function(T data)? onSuccess,
    void Function(ErrorEntity error)? onError,
  }) async {
    onStateUpdate(UIState.loading());

    final result = await operation();

    _handleEither(
      either: result,
      onSuccess: (data) {
        if (onSuccess != null) onSuccess(data);
        onStateUpdate(UIState.success(data: data));
      },
      onError: (error) {
        if (onError != null) onError(error);
        onStateUpdate(UIState.error(error: error));
      },
    );
  }

  Future<void> handlePagingRequest<ItemType>({
    required PagingState<int, ItemType> currentState,
    required Future<Either<ErrorEntity, BasePagingModel<ItemType>>> Function({
      required int offset,
      required int limit,
    }) operation,
    required void Function(PagingState<int, ItemType> newState) onStateUpdate,
    void Function(BasePagingModel<ItemType> data)? onSuccess,
    int limit = 10,
  }) async {
    if (currentState.isLoading) return;

    onStateUpdate(currentState.copyWith(
      isLoading: true,
      error: null,
    ));

    final offset = (currentState.keys?.isEmpty ?? true) ? 0 : currentState.keys!.last;
    final result = await operation(offset: offset, limit: limit);

    _handleEither(
      either: result,
      onSuccess: (data) {
        onSuccess?.call(data);
        final isLastPage = data.result.length < limit;
        final nextOffset = offset + data.result.length;

        onStateUpdate(currentState.copyWith(
          pages: [...?currentState.pages, data.result],
          keys: [...?currentState.keys, nextOffset],
          hasNextPage: !isLastPage,
          isLoading: false,
        ));
      },
      onError: (error) {
        onStateUpdate(currentState.copyWith(
          error: error,
          isLoading: false,
        ));
      },
    );
  }
}
