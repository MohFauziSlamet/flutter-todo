import 'package:todo_apps/core/state/data_state.dart';

abstract class NoParamsUseCase<ReturnSuccessType> {
  const NoParamsUseCase();
  Future<DataState<ReturnSuccessType>> call();
}
