part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(UIState<List<TodoEntity>>.idle())
    UIState<List<TodoEntity>> stateDataListTodo,
  }) = _HomeState;
}
