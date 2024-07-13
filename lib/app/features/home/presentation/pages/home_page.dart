// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_apps/app/features/home/presentation/blocs/bloc/home_bloc.dart';
import 'package:todo_apps/app/features/task/domain/entities/todo_entity.dart';
import 'package:todo_apps/app/widgets/general_empty_widget.dart';
import 'package:todo_apps/app/widgets/main_button_widget.dart';
import 'package:todo_apps/app/widgets/shimmer_widget.dart';
import 'package:todo_apps/config/themes/app_colors.dart';
import 'package:todo_apps/core/state/ui_state.dart';
import 'package:todo_apps/utils/extensions/date_time_ext.dart';
import 'package:todo_apps/utils/functions/get_controller_func.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc _bloc;

  @override
  void initState() {
    _bloc = GetControllerFunc.call<HomeBloc>();
    _bloc.add(const HomeEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(

          /// appbar
          appBar: AppBar(
            backgroundColor: AppColors.gray50,
            centerTitle: true,
            title: Text(
              'Todo List',
              style: TextStyle(
                fontSize: 18.sp,
                color: AppColors.gray900,
              ),
            ),
          ),

          /// body
          body: BlocSelector<HomeBloc, HomeState, UIState<List<TodoEntity>>>(
            selector: (state) => state.stateDataListTodo,
            builder: (context, state) {
              return state.when(
                success: (listData) {
                  if (listData.isEmpty) {
                    return const _SuccessButEmptyDataState();
                  }
                  return _SuccesState(bloc: _bloc, listData: listData);
                },
                empty: (message) => _EmptyState(message: message),
                loading: () => const _LoadingState(),
                error: (message) => _ErrorState(bloc: _bloc, message: message),
                idle: () => const SizedBox(),
              );
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: MainButtonWidget(
              primaryColor: AppColors.primary,
              text: "Add your todo + ",
              onTap: () {
                _bloc.add(const HomeEvent.createTodo());
              },
            ),
          )),
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required HomeBloc bloc, required this.message}) : _bloc = bloc;

  final HomeBloc _bloc;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GeneralEmptyErrorWidget.error(
        onRefresh: () {
          _bloc.add(const HomeEvent.started());
        },
        titleText: 'Upps..',
        descText: message,
      ),
    );
  }
}

class _SuccesState extends StatelessWidget {
  const _SuccesState({
    required HomeBloc bloc,
    required this.listData,
  }) : _bloc = bloc;

  final HomeBloc _bloc;
  final List<TodoEntity> listData;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: ReorderableListView.builder(
        physics: const BouncingScrollPhysics(),
        onReorder: (oldIndex, newIndex) {
          _bloc.add(HomeEvent.reOrderToDo(
            oldIndex: oldIndex,
            newIndex: newIndex,
          ));
        },
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10).w,
        itemBuilder: (context, index) {
          var currentData = listData[index];
          return Padding(
            key: ValueKey(currentData.id),
            padding: EdgeInsets.only(bottom: 10.w),
            child: Material(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.gray200,
              child: InkWell(
                onTap: () => _bloc.add(HomeEvent.onTapTodo(todo: currentData)),
                onLongPress: null,
                borderRadius: BorderRadius.circular(10.r),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5).w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        activeColor: AppColors.primary,
                        value: currentData.isCompleted,
                        onChanged: (_) {
                          _bloc.add(HomeEvent.onToogleTodo(todo: currentData));
                        },
                      ),
                      8.horizontalSpace,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            /// title todo
                            Text(
                              currentData.title,
                              maxLines: 1,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 14.sp,
                                color: Colors.black,
                                decoration: currentData.isCompleted
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                              ),
                            ),

                            /// due date
                            4.verticalSpaceFromWidth,
                            if (currentData.dueDate != null)
                              Text(
                                currentData.dueDate.extToFormattedString(
                                  outputDateFormat: 'dd MMMM yyyy - HH:mm',
                                ),
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.gray600,
                                ),
                              ),
                          ],
                        ),
                      ),

                      /// icon delete
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          _bloc.add(HomeEvent.deleteTodo(idTodo: currentData.id));
                        },
                        icon: const Icon(
                          Icons.delete_forever,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: listData.length,
      ),
    );
  }
}

class _SuccessButEmptyDataState extends StatelessWidget {
  const _SuccessButEmptyDataState();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: GeneralEmptyErrorWidget.empty(
        titleText: 'Add Your Todo',
        descText: '',
        customTitleTextStyle: TextStyle(color: AppColors.gray900),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GeneralEmptyErrorWidget.empty(
        titleText: message,
        descText: '',
      ),
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState();

  @override
  Widget build(BuildContext context) {
    return const ShimmerWidget.list(
      length: 4,
    );
  }
}
