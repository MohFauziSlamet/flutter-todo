import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_apps/config/routes/route_name.dart';
import 'package:todo_apps/utils/functions/get_context_func.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

@lazySingleton
class SplashCubit extends Cubit<SplashState> {
  final GetContextFunc _context;
  SplashCubit(this._context) : super(const SplashState()) {
    _onInit();
  }

  Future<void> _onInit() async {
    await Future.delayed(const Duration(seconds: 2));
    _context.i.router.replaceNamed(AppRouteName.home);
  }
}
