
import 'package:injectable/injectable.dart';
import 'package:todo_apps/app/features/task/domain/entities/todo_entity.dart';
import 'package:todo_apps/app/features/task/domain/repositories/task_repository.dart';
import 'package:todo_apps/core/state/data_state.dart';
import 'package:todo_apps/core/usecases/usecase.dart';

@lazySingleton
class ReOrderTodoUC extends UseCase<String, ReOrderParams> {
  final TaskRepository taskRepository;

  ReOrderTodoUC({required this.taskRepository});
  @override
  Future<DataState<String>> call(params) async {
    var resAllTodo = await taskRepository.getAllTodo();
    return resAllTodo.map(
      success: (mapData) {
        List<TodoEntity> listData = List.from(mapData.data);
        int oldIndex = params.oldIndex;
        int newIndex = params.newIndex;
        if (oldIndex < newIndex) {
          newIndex--;
        }

        /// * Proses Pindah Secara Local
        final tempData = listData[oldIndex];
        listData.removeAt(oldIndex);
        listData.insert(newIndex, tempData);
        return taskRepository.saveListTodo(
          listTodo: listData,
        );
      },
      error: (mapError) {
        return DataState.error(
          message: mapError.message,
          exception: mapError.exception,
          stackTrace: mapError.stackTrace,
        );
      },
    );
  }
}

class ReOrderParams {
  final int oldIndex;
  final int newIndex;

  ReOrderParams({
    required this.oldIndex,
    required this.newIndex,
  });
}
