
import 'package:injectable/injectable.dart';
import 'package:todo_apps/app/features/task/domain/repositories/task_repository.dart';
import 'package:todo_apps/core/state/data_state.dart';
import 'package:todo_apps/core/usecases/usecase.dart';

@lazySingleton
class CreateTodoUc extends UseCase<String, CreateTodoParams> {
  final TaskRepository taskRepository;

  CreateTodoUc({required this.taskRepository});
  @override
  Future<DataState<String>> call(params) async {
    return await taskRepository.addTodo(
      title: params.title,
      description: params.description,
      isCompleted: params.isCompleted,
      dueDate: params.dueDate,
    );
  }
}

class CreateTodoParams {
  final String title;
  final String description;
  final bool isCompleted;
  final DateTime? dueDate;

  const CreateTodoParams({
    required this.title,
    required this.description,
    required this.isCompleted,
    this.dueDate,
  });
}
