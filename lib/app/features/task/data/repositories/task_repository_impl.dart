

import 'package:injectable/injectable.dart';
import 'package:todo_apps/app/features/task/data/datasources/local/task_local_datasource.dart';
import 'package:todo_apps/app/features/task/data/models/get_local_list_todo_model.dart';
import 'package:todo_apps/app/features/task/domain/entities/todo_entity.dart';
import 'package:todo_apps/app/features/task/domain/repositories/task_repository.dart';
import 'package:todo_apps/core/state/data_state.dart';

@LazySingleton(as: TaskRepository)
class TaskRepositoryImpl extends TaskRepository {
  final TaskLocalDataSource _taskLocalDataSource;

  TaskRepositoryImpl({required TaskLocalDataSource taskLocalDataSource})
      : _taskLocalDataSource = taskLocalDataSource;
  @override
  Future<DataState<String>> addTodo({
    required String title,
    required String description,
    required bool isCompleted,
    required DateTime? dueDate,
  }) async {
    try {
      var res = await _taskLocalDataSource.addTodo(
        todo: TodoModel(
          createdAt: DateTime.now().toString(),
          isCompleted: isCompleted,
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          title: title,
          description: description,
          dueDate: (dueDate == null) ? '' : dueDate.toString(),
        ),
      );
      return res;
    } catch (e, stackTrace) {
      return DataState.error(
        message: 'Error Add Todo',
        exception: Exception(e),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<DataState<String>> deleteTodo({required String id}) async {
    try {
      return await _taskLocalDataSource.deleteTodo(id: id);
    } catch (e, stackTrace) {
      return DataState.error(
        message: 'Error Delete Todo',
        exception: Exception(e),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<DataState<List<TodoEntity>>> getAllTodo() async {
    try {
      var res = await _taskLocalDataSource.getAllListTodo();
      return res.map(
        success: (mapSuccess) {
          List<TodoEntity> listData = List.from(
            mapSuccess.data.data.map(
              (e) => TodoEntity(
                id: e.id,
                title: e.title,
                description: e.description,
                dueDate:
                    (e.dueDate == '') ? null : DateTime.tryParse(e.dueDate),
                isCompleted: e.isCompleted,
              ),
            ),
          );
          return DataState.success(
            data: listData,
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
    } catch (e, stackTrace) {
      return DataState.error(
        message: 'Error Delete Todo',
        exception: Exception(e),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<DataState<String>> updateTodo({required TodoEntity todo}) async {
    try {
      return await _taskLocalDataSource.updateTodo(
          id: todo.id,
          title: todo.title,
          description: todo.description,
          dueDate: todo.dueDate,
          isCompleted: todo.isCompleted);
    } catch (e, stackTrace) {
      return DataState.error(
        message: 'Error Add Todo',
        exception: Exception(e),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<DataState<String>> saveListTodo(
      {required List<TodoEntity> listTodo}) async {
    List<TodoModel> resLocalModel =
        (await _taskLocalDataSource.getAllListTodo())
                .whenOrNull(success: (mapData) => mapData.data) ??
            [];
    List<TodoModel> convertListModel = listTodo.map(
      (e) {
        var createdAt = resLocalModel
            .firstWhere(
              (element) => element.id == e.id,
              orElse: () => TodoModel(
                createdAt: DateTime.now().toString(),
                isCompleted: e.isCompleted,
                id: e.id,
                title: e.title,
                description: e.description,
                dueDate: e.dueDate == null ? '' : e.dueDate.toString(),
              ),
            )
            .createdAt;
        return TodoModel(
          createdAt: createdAt,
          isCompleted: e.isCompleted,
          id: e.id,
          title: e.title,
          description: e.description,
          dueDate: e.dueDate == null ? '' : e.dueDate.toString(),
        );
      },
    ).toList();
    return await _taskLocalDataSource.saveAllData(
      listData: convertListModel,
    );
  }
}
