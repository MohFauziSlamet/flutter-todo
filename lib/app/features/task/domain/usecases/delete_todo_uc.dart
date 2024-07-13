
import 'package:injectable/injectable.dart';
import 'package:todo_apps/app/features/task/domain/repositories/task_repository.dart';
import 'package:todo_apps/core/state/data_state.dart';
import 'package:todo_apps/core/usecases/usecase.dart';

@lazySingleton
class DeleteTodoUc extends UseCase<String, DeleteTodoParams> {
  final TaskRepository taskRepository;

  DeleteTodoUc({required this.taskRepository});

  @override
  Future<DataState<String>> call(DeleteTodoParams params) async {
    return await taskRepository.deleteTodo(
      id: params.id,
    );
  }
}

class DeleteTodoParams {
  final String id;

  DeleteTodoParams({required this.id});
}
