
import 'package:injectable/injectable.dart';
import 'package:todo_apps/app/features/task/domain/entities/todo_entity.dart';
import 'package:todo_apps/app/features/task/domain/repositories/task_repository.dart';
import 'package:todo_apps/core/state/data_state.dart';
import 'package:todo_apps/core/usecases/usecase.dart';

@lazySingleton
class UpdateTodoUc extends UseCase<String, UpdateTodoParams> {
  final TaskRepository taskRepository;

  UpdateTodoUc({required this.taskRepository});

  @override
  Future<DataState<String>> call(UpdateTodoParams params) async {
    return await taskRepository.updateTodo(
      todo: params.todo,
    );
  }
}

class UpdateTodoParams {
  final TodoEntity todo;

  UpdateTodoParams({required this.todo});
}
