import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_apps/app/features/task/domain/entities/todo_entity.dart';
import 'package:todo_apps/app/features/task/domain/usecases/update_todo_uc.dart';
import 'package:todo_apps/constants/core/lottie_assets_constants.dart';
import 'package:todo_apps/utils/functions/get_context_func.dart';
import 'package:todo_apps/utils/services/dialog_service.dart';

part 'edit_task_cubit.freezed.dart';
part 'edit_task_state.dart';

@lazySingleton
class EditTaskCubit extends Cubit<EditTaskState> {
  final DialogService _dialogService;
  final UpdateTodoUc _updateTodoUc;
  final GetContextFunc _context;
  EditTaskCubit(this._dialogService, this._updateTodoUc, this._context)
      : super(const EditTaskState());

  void init(TodoEntity todo) {
    emit(state.copyWith(selectedTodo: todo));
  }

  void updateTodo({
    required TodoEntity newTodo,
  }) {
    emit(state.copyWith(
      selectedTodo: newTodo,
    ));

    _dialogService.mainPopUp(
      title: "Success",
      desc: "success add due date in your todo",
      urlImage: LottieAssetsConstants.lottieSuccess,
    );
  }

  void onChangeTitle(String value) {
    emit(state.copyWith(
        selectedTodo: state.selectedTodo.copyWith(
      title: value,
    )));
  }

  void onChangeDesc(String value) {
    emit(state.copyWith(
        selectedTodo: state.selectedTodo.copyWith(
      description: value,
    )));
  }

  Future<void> onTapSave() async {
    var res = await _updateTodoUc.call(UpdateTodoParams(
      todo: state.selectedTodo,
    ));
    res.map(
      success: (_) {
        _dialogService.mainPopUp(
            title: "Success",
            desc: "success update your todo",
            urlImage: LottieAssetsConstants.lottieSuccess,
            useButton: true,
            mainButtonFunction: () {
              _dialogService.closeOverlay();
              _context.i.router.maybePop();
            });
      },
      error: (mapError) {
        _dialogService.dialogProblem(
          desc: mapError.message,
        );
      },
    );
  }
}
