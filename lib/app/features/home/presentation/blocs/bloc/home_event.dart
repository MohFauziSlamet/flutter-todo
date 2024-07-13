part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.createTodo() = _CreateTodo;
  const factory HomeEvent.deleteTodo({
    required String idTodo,
  }) = _DeleteTodo;
  const factory HomeEvent.reOrderToDo({
    required int newIndex,
    required int oldIndex,
  }) = _ReOrderTodo;

  const factory HomeEvent.onTapTodo({
    required TodoEntity todo,
  }) = _OnTapTodo;
  const factory HomeEvent.onToogleTodo({
    required TodoEntity todo,
  }) = _OnToogleTodo;
}
