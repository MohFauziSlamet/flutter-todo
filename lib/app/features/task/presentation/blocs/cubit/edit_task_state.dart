part of 'edit_task_cubit.dart';

@freezed
class EditTaskState with _$EditTaskState {
  const factory EditTaskState({
    @Default(
      TodoEntity(
        id: '',
        title: '',
        description: '',
        isCompleted: false,
        dueDate: null,
      ),
    )
    TodoEntity selectedTodo,
  }) = _EditTaskState;
}
