import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@freezed
class UIState<T> with _$UIState<T> {
  const UIState._();
  const factory UIState.success({required T data}) = UIStateSuccess<T>;
  const factory UIState.empty({
    @Default('Sorry, your data is empty') String message,
  }) = UIStateEmpty<T>;
  const factory UIState.loading() = UIStateLoading<T>;
  const factory UIState.error({
    @Default('Upps there is an error, please try again later') String message,
  }) = UIStateError<T>;
  const factory UIState.idle() = UIStateIdle<T>;

  bool isLoading() {
    return this is UIStateLoading<T>;
  }

  bool isSuccess() {
    return this is UIStateSuccess<T>;
  }

  bool isEmpty() {
    return this is UIStateEmpty<T>;
  }

  bool isError() {
    return this is UIStateError<T>;
  }

  bool isIdle() {
    return this is UIStateIdle<T>;
  }

  T? dataSuccess() {
    if (this is UIStateSuccess<T>) {
      return (this as UIStateSuccess<T>).data;
    }
    return null;
  }
}
