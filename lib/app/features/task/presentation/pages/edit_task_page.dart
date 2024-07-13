import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_apps/app/features/task/domain/entities/todo_entity.dart';
import 'package:todo_apps/app/features/task/presentation/blocs/cubit/edit_task_cubit.dart';
import 'package:todo_apps/app/widgets/main_button_widget.dart';
import 'package:todo_apps/app/widgets/main_text_form_field_widget.dart';
import 'package:todo_apps/config/themes/app_colors.dart';
import 'package:todo_apps/utils/extensions/date_time_ext.dart';
import 'package:todo_apps/utils/functions/get_controller_func.dart';

@RoutePage()
class EditTaskPage extends StatefulWidget {
  final TodoEntity selectedTodo;
  const EditTaskPage({super.key, required this.selectedTodo});

  @override
  State<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  late EditTaskCubit _cubit;
  TextEditingController titleTextEditingC = TextEditingController();
  TextEditingController descTextEditingC = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _cubit = GetControllerFunc.call<EditTaskCubit>();
    _cubit.init(widget.selectedTodo);
    titleTextEditingC.text = widget.selectedTodo.title;
    descTextEditingC.text = widget.selectedTodo.description;
    super.initState();
  }

  @override
  void dispose() {
    titleTextEditingC.dispose();
    descTextEditingC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.router.maybePop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.gray900,
            ),
          ),
          backgroundColor: AppColors.gray50,
          title: Text(
            'Edit Todo',
            style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.gray900,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                MainTextFormFieldWidget(
                  labelText: 'Title',
                  onChanged: _cubit.onChangeTitle,
                  hintText: 'Input Your Title Task',
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.gray300,
                  ),
                  controller: titleTextEditingC,
                  validator: (value) {
                    if ((value ?? '').isEmpty) return 'Must Be Filled';
                    return null;
                  },
                ),
                10.verticalSpace,
                MainTextFormFieldWidget(
                  onChanged: _cubit.onChangeDesc,
                  labelText: 'Description',
                  labelStyle: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.gray900,
                  ),
                  hintText: 'Input Your Description',
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.gray300,
                  ),
                  controller: descTextEditingC,
                  maxLines: 5,
                  validator: (value) => null,
                ),
                20.verticalSpace,
                BlocSelector<EditTaskCubit, EditTaskState, TodoEntity>(
                  selector: (state) {
                    return state.selectedTodo;
                  },
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () async {
                        final DateTime? resDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now().subtract(const Duration(days: 365)),
                          lastDate: DateTime.now().add(
                            const Duration(days: 3000),
                          ),
                        );
                        if (resDate == null) return;

                        if (!context.mounted) return;

                        final TimeOfDay? resTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(
                            DateTime.now(),
                          ),
                        );
                        if (resTime == null) return;

                        final result = DateTime(
                          resDate.year,
                          resDate.month,
                          resDate.day,
                          resTime.hour,
                          resTime.minute,
                        );
                        _cubit.updateTodo(
                          newTodo: state.copyWith(
                            dueDate: result,
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.date_range_outlined,
                            color: AppColors.primary,
                            size: 24.sp,
                          ),
                          10.horizontalSpace,
                          Text(
                            state.dueDate == null
                                ? 'No Due Date'
                                : state.dueDate.extToFormattedString(
                                    outputDateFormat: 'dd-MM-yyyy HH:mm',
                                  ),
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.primary,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
                const Spacer(),
                MainButtonWidget(
                  maximumHeight: 50.h,
                  minimumHeight: 40.h,
                  text: 'Save Your Todo',
                  onTap: () {
                    if (formKey.currentState?.validate() == false) return;
                    _cubit.onTapSave();
                  },
                ),
                40.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
