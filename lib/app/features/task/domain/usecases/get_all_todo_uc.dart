
import 'package:injectable/injectable.dart';
import 'package:todo_apps/app/features/task/domain/entities/todo_entity.dart';
import 'package:todo_apps/app/features/task/domain/repositories/task_repository.dart';
import 'package:todo_apps/core/state/data_state.dart';
import 'package:todo_apps/core/usecases/no_params_usecase.dart';

@lazySingleton
class GetAllTodoUC extends NoParamsUseCase<List<TodoEntity>> {
  final TaskRepository repository;

  GetAllTodoUC({required this.repository});
  @override
  Future<DataState<List<TodoEntity>>> call() async {
    return await repository.getAllTodo();
  }
}
