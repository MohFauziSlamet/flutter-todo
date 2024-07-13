import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_apps/app/features/home/presentation/widgets/dialog_content_create_todo_widget.dart';
import 'package:todo_apps/app/features/task/domain/entities/todo_entity.dart';
import 'package:todo_apps/app/features/task/domain/usecases/create_todo_uc.dart';
import 'package:todo_apps/app/features/task/domain/usecases/delete_todo_uc.dart';
import 'package:todo_apps/app/features/task/domain/usecases/get_all_todo_uc.dart';
import 'package:todo_apps/app/features/task/domain/usecases/reorder_todo_uc.dart';
import 'package:todo_apps/app/features/task/domain/usecases/update_todo_uc.dart';
import 'package:todo_apps/app/widgets/dialog_content_general_widget.dart';
import 'package:todo_apps/config/routes/app_router.dart';
import 'package:todo_apps/config/themes/app_colors.dart';
import 'package:todo_apps/constants/core/image_assets_const.dart';
import 'package:todo_apps/constants/core/lottie_assets_constants.dart';
import 'package:todo_apps/core/state/ui_state.dart';
import 'package:todo_apps/utils/functions/get_context_func.dart';
import 'package:todo_apps/utils/services/dialog_service.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetContextFunc context;
  final CreateTodoUc createTodoUc;
  final DeleteTodoUc deleteTodoUc;
  final GetAllTodoUC getAllTodoUC;
  final ReOrderTodoUC reOrderTodoUC;
  final DialogService dialogService;
  final UpdateTodoUc updateTodoUc;

  HomeBloc(
    this.context,
    this.createTodoUc,
    this.deleteTodoUc,
    this.getAllTodoUC,
    this.reOrderTodoUC,
    this.dialogService,
    this.updateTodoUc,
  ) : super(const HomeState()) {
    on<_Started>(_onStarted);
    on<_CreateTodo>(_onCreateTodo);
    on<_DeleteTodo>(_onDeleteTodo);
    on<_ReOrderTodo>(_onReOrderTodo);
    on<_OnTapTodo>(_onTapTodo);
    on<_OnToogleTodo>(_onToogleTodo);
  }

  FutureOr<void> _onStarted(event, emit) async {
    event as _Started;
    emit(state.copyWith(stateDataListTodo: const UIState.loading()));

    var result = await getAllTodoUC();
    result.map(
      success: (mapData) {
        emit(
          state.copyWith(
            stateDataListTodo: UIState.success(data: mapData.data),
          ),
        );
      },
      error: (mapError) {
        emit(
          state.copyWith(
            stateDataListTodo: UIState.error(
              message: mapError.message,
            ),
          ),
        );
      },
    );
  }

  FutureOr<void> _onCreateTodo(event, emit) async {
    event as _CreateTodo;

    var resTitleTask = await dialogService.showDialogGeneral<String>(
      color: AppColors.gray900,
      padding: EdgeInsets.all(24.w),
      content: DialogContentCreateTodoWidget(
        onTapTitleTask: (titleTask) async {
          context.i.router.maybePop(
            titleTask,
          );
        },
      ),
    );

    if (resTitleTask == null || resTitleTask == '') return;
    dialogService.loading();
    var res = await createTodoUc(
      CreateTodoParams(
        title: resTitleTask,
        description: '',
        isCompleted: false,
      ),
    );
    var resAllTodo = await getAllTodoUC();
    resAllTodo.map(
      success: (mapData) {
        emit(
          state.copyWith(
            stateDataListTodo: UIState.success(data: mapData.data),
          ),
        );
      },
      error: (_) {},
    );
    await Future.delayed(const Duration(seconds: 1));
    dialogService.closeOverlay();
    res.map(
      success: (mapData) {
        dialogService.mainPopUp(
          title: "Success",
          desc: "Your todo successfuly added",
          urlImage: LottieAssetsConstants.lottieSuccess,
        );
      },
      error: (mapData) {
        dialogService.dialogProblem(
          desc: mapData.message,
        );
      },
    );
  }

  FutureOr<void> _onDeleteTodo(event, emit) async {
    event as _DeleteTodo;
    bool isDelete = false;

    await dialogService.showDialogGeneral(
        content: DialogContentGeneralWidget.twoButton(
      imagePath: ImageAssetsConst.drawConfirmation,
      title: "Are you sure you want to delete this task?",
      textPositiveButton: "Yes",
      textNegativeButton: "No",
      barrierDismissible: false,
      onTapNegativeButton: () {
        dialogService.closeOverlay();
        return;
      },
      onTapPositiveButton: () async {
        dialogService.closeOverlay();
        isDelete = true;
      },
    ));

    if (isDelete) {
      var res = await deleteTodoUc(
        DeleteTodoParams(id: event.idTodo),
      );
      var resAllTodo = await getAllTodoUC();
      resAllTodo.map(
        success: (mapData) {
          emit(
            state.copyWith(
              stateDataListTodo: UIState.success(data: mapData.data),
            ),
          );
        },
        error: (_) {},
      );
      res.map(
        success: (mapData) {
          dialogService.mainPopUp(
            title: "Success",
            desc: "Your todo successfuly remove",
            urlImage: LottieAssetsConstants.lottieSuccess,
          );
        },
        error: (mapData) {
          dialogService.dialogProblem(
            desc: mapData.message,
          );
        },
      );
    }
  }

  FutureOr<void> _onReOrderTodo(event, emit) async {
    event as _ReOrderTodo;
    dialogService.loading();
    var res = await reOrderTodoUC(
      ReOrderParams(
        oldIndex: event.oldIndex,
        newIndex: event.newIndex,
      ),
    );
    var resAllTodo = await getAllTodoUC();
    resAllTodo.map(
      success: (mapData) {
        emit(
          state.copyWith(
            stateDataListTodo: UIState.success(data: mapData.data),
          ),
        );
      },
      error: (_) {},
    );
    dialogService.closeOverlay();
    res.map(
      success: (mapData) {},
      error: (mapData) {
        dialogService.dialogProblem(
          desc: mapData.message,
        );
      },
    );
  }

  FutureOr<void> _onTapTodo(event, emit) async {
    event as _OnTapTodo;
    await context.i.router.push(EditTaskRoute(selectedTodo: event.todo));
    var resAllTodo = await getAllTodoUC();
    resAllTodo.map(
      success: (mapData) {
        emit(
          state.copyWith(
            stateDataListTodo: UIState.success(data: mapData.data),
          ),
        );
      },
      error: (_) {},
    );
  }

  FutureOr<void> _onToogleTodo(event, emit) async {
    event as _OnToogleTodo;
    dialogService.loading();
    await updateTodoUc(
      UpdateTodoParams(
        todo: event.todo.copyWith(
          isCompleted: !event.todo.isCompleted,
        ),
      ),
    );
    var resAllTodo = await getAllTodoUC();
    resAllTodo.map(
      success: (mapData) {
        emit(
          state.copyWith(
            stateDataListTodo: UIState.success(data: mapData.data),
          ),
        );
      },
      error: (_) {},
    );
    dialogService.closeOverlay();
  }
}
