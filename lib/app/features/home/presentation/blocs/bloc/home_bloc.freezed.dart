// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createTodo,
    required TResult Function(String idTodo) deleteTodo,
    required TResult Function(int newIndex, int oldIndex) reOrderToDo,
    required TResult Function(TodoEntity todo) onTapTodo,
    required TResult Function(TodoEntity todo) onToogleTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createTodo,
    TResult? Function(String idTodo)? deleteTodo,
    TResult? Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult? Function(TodoEntity todo)? onTapTodo,
    TResult? Function(TodoEntity todo)? onToogleTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createTodo,
    TResult Function(String idTodo)? deleteTodo,
    TResult Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult Function(TodoEntity todo)? onTapTodo,
    TResult Function(TodoEntity todo)? onToogleTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ReOrderTodo value) reOrderToDo,
    required TResult Function(_OnTapTodo value) onTapTodo,
    required TResult Function(_OnToogleTodo value) onToogleTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ReOrderTodo value)? reOrderToDo,
    TResult? Function(_OnTapTodo value)? onTapTodo,
    TResult? Function(_OnToogleTodo value)? onToogleTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ReOrderTodo value)? reOrderToDo,
    TResult Function(_OnTapTodo value)? onTapTodo,
    TResult Function(_OnToogleTodo value)? onToogleTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createTodo,
    required TResult Function(String idTodo) deleteTodo,
    required TResult Function(int newIndex, int oldIndex) reOrderToDo,
    required TResult Function(TodoEntity todo) onTapTodo,
    required TResult Function(TodoEntity todo) onToogleTodo,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createTodo,
    TResult? Function(String idTodo)? deleteTodo,
    TResult? Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult? Function(TodoEntity todo)? onTapTodo,
    TResult? Function(TodoEntity todo)? onToogleTodo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createTodo,
    TResult Function(String idTodo)? deleteTodo,
    TResult Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult Function(TodoEntity todo)? onTapTodo,
    TResult Function(TodoEntity todo)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ReOrderTodo value) reOrderToDo,
    required TResult Function(_OnTapTodo value) onTapTodo,
    required TResult Function(_OnToogleTodo value) onToogleTodo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ReOrderTodo value)? reOrderToDo,
    TResult? Function(_OnTapTodo value)? onTapTodo,
    TResult? Function(_OnToogleTodo value)? onToogleTodo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ReOrderTodo value)? reOrderToDo,
    TResult Function(_OnTapTodo value)? onTapTodo,
    TResult Function(_OnToogleTodo value)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateTodoImplCopyWith<$Res> {
  factory _$$CreateTodoImplCopyWith(
          _$CreateTodoImpl value, $Res Function(_$CreateTodoImpl) then) =
      __$$CreateTodoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateTodoImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CreateTodoImpl>
    implements _$$CreateTodoImplCopyWith<$Res> {
  __$$CreateTodoImplCopyWithImpl(
      _$CreateTodoImpl _value, $Res Function(_$CreateTodoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateTodoImpl implements _CreateTodo {
  const _$CreateTodoImpl();

  @override
  String toString() {
    return 'HomeEvent.createTodo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateTodoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createTodo,
    required TResult Function(String idTodo) deleteTodo,
    required TResult Function(int newIndex, int oldIndex) reOrderToDo,
    required TResult Function(TodoEntity todo) onTapTodo,
    required TResult Function(TodoEntity todo) onToogleTodo,
  }) {
    return createTodo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createTodo,
    TResult? Function(String idTodo)? deleteTodo,
    TResult? Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult? Function(TodoEntity todo)? onTapTodo,
    TResult? Function(TodoEntity todo)? onToogleTodo,
  }) {
    return createTodo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createTodo,
    TResult Function(String idTodo)? deleteTodo,
    TResult Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult Function(TodoEntity todo)? onTapTodo,
    TResult Function(TodoEntity todo)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (createTodo != null) {
      return createTodo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ReOrderTodo value) reOrderToDo,
    required TResult Function(_OnTapTodo value) onTapTodo,
    required TResult Function(_OnToogleTodo value) onToogleTodo,
  }) {
    return createTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ReOrderTodo value)? reOrderToDo,
    TResult? Function(_OnTapTodo value)? onTapTodo,
    TResult? Function(_OnToogleTodo value)? onToogleTodo,
  }) {
    return createTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ReOrderTodo value)? reOrderToDo,
    TResult Function(_OnTapTodo value)? onTapTodo,
    TResult Function(_OnToogleTodo value)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (createTodo != null) {
      return createTodo(this);
    }
    return orElse();
  }
}

abstract class _CreateTodo implements HomeEvent {
  const factory _CreateTodo() = _$CreateTodoImpl;
}

/// @nodoc
abstract class _$$DeleteTodoImplCopyWith<$Res> {
  factory _$$DeleteTodoImplCopyWith(
          _$DeleteTodoImpl value, $Res Function(_$DeleteTodoImpl) then) =
      __$$DeleteTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String idTodo});
}

/// @nodoc
class __$$DeleteTodoImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteTodoImpl>
    implements _$$DeleteTodoImplCopyWith<$Res> {
  __$$DeleteTodoImplCopyWithImpl(
      _$DeleteTodoImpl _value, $Res Function(_$DeleteTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTodo = null,
  }) {
    return _then(_$DeleteTodoImpl(
      idTodo: null == idTodo
          ? _value.idTodo
          : idTodo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTodoImpl implements _DeleteTodo {
  const _$DeleteTodoImpl({required this.idTodo});

  @override
  final String idTodo;

  @override
  String toString() {
    return 'HomeEvent.deleteTodo(idTodo: $idTodo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoImpl &&
            (identical(other.idTodo, idTodo) || other.idTodo == idTodo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idTodo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      __$$DeleteTodoImplCopyWithImpl<_$DeleteTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createTodo,
    required TResult Function(String idTodo) deleteTodo,
    required TResult Function(int newIndex, int oldIndex) reOrderToDo,
    required TResult Function(TodoEntity todo) onTapTodo,
    required TResult Function(TodoEntity todo) onToogleTodo,
  }) {
    return deleteTodo(idTodo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createTodo,
    TResult? Function(String idTodo)? deleteTodo,
    TResult? Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult? Function(TodoEntity todo)? onTapTodo,
    TResult? Function(TodoEntity todo)? onToogleTodo,
  }) {
    return deleteTodo?.call(idTodo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createTodo,
    TResult Function(String idTodo)? deleteTodo,
    TResult Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult Function(TodoEntity todo)? onTapTodo,
    TResult Function(TodoEntity todo)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(idTodo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ReOrderTodo value) reOrderToDo,
    required TResult Function(_OnTapTodo value) onTapTodo,
    required TResult Function(_OnToogleTodo value) onToogleTodo,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ReOrderTodo value)? reOrderToDo,
    TResult? Function(_OnTapTodo value)? onTapTodo,
    TResult? Function(_OnToogleTodo value)? onToogleTodo,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ReOrderTodo value)? reOrderToDo,
    TResult Function(_OnTapTodo value)? onTapTodo,
    TResult Function(_OnToogleTodo value)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodo implements HomeEvent {
  const factory _DeleteTodo({required final String idTodo}) = _$DeleteTodoImpl;

  String get idTodo;
  @JsonKey(ignore: true)
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReOrderTodoImplCopyWith<$Res> {
  factory _$$ReOrderTodoImplCopyWith(
          _$ReOrderTodoImpl value, $Res Function(_$ReOrderTodoImpl) then) =
      __$$ReOrderTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int newIndex, int oldIndex});
}

/// @nodoc
class __$$ReOrderTodoImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ReOrderTodoImpl>
    implements _$$ReOrderTodoImplCopyWith<$Res> {
  __$$ReOrderTodoImplCopyWithImpl(
      _$ReOrderTodoImpl _value, $Res Function(_$ReOrderTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newIndex = null,
    Object? oldIndex = null,
  }) {
    return _then(_$ReOrderTodoImpl(
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReOrderTodoImpl implements _ReOrderTodo {
  const _$ReOrderTodoImpl({required this.newIndex, required this.oldIndex});

  @override
  final int newIndex;
  @override
  final int oldIndex;

  @override
  String toString() {
    return 'HomeEvent.reOrderToDo(newIndex: $newIndex, oldIndex: $oldIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReOrderTodoImpl &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex) &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newIndex, oldIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReOrderTodoImplCopyWith<_$ReOrderTodoImpl> get copyWith =>
      __$$ReOrderTodoImplCopyWithImpl<_$ReOrderTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createTodo,
    required TResult Function(String idTodo) deleteTodo,
    required TResult Function(int newIndex, int oldIndex) reOrderToDo,
    required TResult Function(TodoEntity todo) onTapTodo,
    required TResult Function(TodoEntity todo) onToogleTodo,
  }) {
    return reOrderToDo(newIndex, oldIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createTodo,
    TResult? Function(String idTodo)? deleteTodo,
    TResult? Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult? Function(TodoEntity todo)? onTapTodo,
    TResult? Function(TodoEntity todo)? onToogleTodo,
  }) {
    return reOrderToDo?.call(newIndex, oldIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createTodo,
    TResult Function(String idTodo)? deleteTodo,
    TResult Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult Function(TodoEntity todo)? onTapTodo,
    TResult Function(TodoEntity todo)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (reOrderToDo != null) {
      return reOrderToDo(newIndex, oldIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ReOrderTodo value) reOrderToDo,
    required TResult Function(_OnTapTodo value) onTapTodo,
    required TResult Function(_OnToogleTodo value) onToogleTodo,
  }) {
    return reOrderToDo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ReOrderTodo value)? reOrderToDo,
    TResult? Function(_OnTapTodo value)? onTapTodo,
    TResult? Function(_OnToogleTodo value)? onToogleTodo,
  }) {
    return reOrderToDo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ReOrderTodo value)? reOrderToDo,
    TResult Function(_OnTapTodo value)? onTapTodo,
    TResult Function(_OnToogleTodo value)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (reOrderToDo != null) {
      return reOrderToDo(this);
    }
    return orElse();
  }
}

abstract class _ReOrderTodo implements HomeEvent {
  const factory _ReOrderTodo(
      {required final int newIndex,
      required final int oldIndex}) = _$ReOrderTodoImpl;

  int get newIndex;
  int get oldIndex;
  @JsonKey(ignore: true)
  _$$ReOrderTodoImplCopyWith<_$ReOrderTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnTapTodoImplCopyWith<$Res> {
  factory _$$OnTapTodoImplCopyWith(
          _$OnTapTodoImpl value, $Res Function(_$OnTapTodoImpl) then) =
      __$$OnTapTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity todo});
}

/// @nodoc
class __$$OnTapTodoImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnTapTodoImpl>
    implements _$$OnTapTodoImplCopyWith<$Res> {
  __$$OnTapTodoImplCopyWithImpl(
      _$OnTapTodoImpl _value, $Res Function(_$OnTapTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$OnTapTodoImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoEntity,
    ));
  }
}

/// @nodoc

class _$OnTapTodoImpl implements _OnTapTodo {
  const _$OnTapTodoImpl({required this.todo});

  @override
  final TodoEntity todo;

  @override
  String toString() {
    return 'HomeEvent.onTapTodo(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTapTodoImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTapTodoImplCopyWith<_$OnTapTodoImpl> get copyWith =>
      __$$OnTapTodoImplCopyWithImpl<_$OnTapTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createTodo,
    required TResult Function(String idTodo) deleteTodo,
    required TResult Function(int newIndex, int oldIndex) reOrderToDo,
    required TResult Function(TodoEntity todo) onTapTodo,
    required TResult Function(TodoEntity todo) onToogleTodo,
  }) {
    return onTapTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createTodo,
    TResult? Function(String idTodo)? deleteTodo,
    TResult? Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult? Function(TodoEntity todo)? onTapTodo,
    TResult? Function(TodoEntity todo)? onToogleTodo,
  }) {
    return onTapTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createTodo,
    TResult Function(String idTodo)? deleteTodo,
    TResult Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult Function(TodoEntity todo)? onTapTodo,
    TResult Function(TodoEntity todo)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (onTapTodo != null) {
      return onTapTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ReOrderTodo value) reOrderToDo,
    required TResult Function(_OnTapTodo value) onTapTodo,
    required TResult Function(_OnToogleTodo value) onToogleTodo,
  }) {
    return onTapTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ReOrderTodo value)? reOrderToDo,
    TResult? Function(_OnTapTodo value)? onTapTodo,
    TResult? Function(_OnToogleTodo value)? onToogleTodo,
  }) {
    return onTapTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ReOrderTodo value)? reOrderToDo,
    TResult Function(_OnTapTodo value)? onTapTodo,
    TResult Function(_OnToogleTodo value)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (onTapTodo != null) {
      return onTapTodo(this);
    }
    return orElse();
  }
}

abstract class _OnTapTodo implements HomeEvent {
  const factory _OnTapTodo({required final TodoEntity todo}) = _$OnTapTodoImpl;

  TodoEntity get todo;
  @JsonKey(ignore: true)
  _$$OnTapTodoImplCopyWith<_$OnTapTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnToogleTodoImplCopyWith<$Res> {
  factory _$$OnToogleTodoImplCopyWith(
          _$OnToogleTodoImpl value, $Res Function(_$OnToogleTodoImpl) then) =
      __$$OnToogleTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity todo});
}

/// @nodoc
class __$$OnToogleTodoImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnToogleTodoImpl>
    implements _$$OnToogleTodoImplCopyWith<$Res> {
  __$$OnToogleTodoImplCopyWithImpl(
      _$OnToogleTodoImpl _value, $Res Function(_$OnToogleTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$OnToogleTodoImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoEntity,
    ));
  }
}

/// @nodoc

class _$OnToogleTodoImpl implements _OnToogleTodo {
  const _$OnToogleTodoImpl({required this.todo});

  @override
  final TodoEntity todo;

  @override
  String toString() {
    return 'HomeEvent.onToogleTodo(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnToogleTodoImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnToogleTodoImplCopyWith<_$OnToogleTodoImpl> get copyWith =>
      __$$OnToogleTodoImplCopyWithImpl<_$OnToogleTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createTodo,
    required TResult Function(String idTodo) deleteTodo,
    required TResult Function(int newIndex, int oldIndex) reOrderToDo,
    required TResult Function(TodoEntity todo) onTapTodo,
    required TResult Function(TodoEntity todo) onToogleTodo,
  }) {
    return onToogleTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createTodo,
    TResult? Function(String idTodo)? deleteTodo,
    TResult? Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult? Function(TodoEntity todo)? onTapTodo,
    TResult? Function(TodoEntity todo)? onToogleTodo,
  }) {
    return onToogleTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createTodo,
    TResult Function(String idTodo)? deleteTodo,
    TResult Function(int newIndex, int oldIndex)? reOrderToDo,
    TResult Function(TodoEntity todo)? onTapTodo,
    TResult Function(TodoEntity todo)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (onToogleTodo != null) {
      return onToogleTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ReOrderTodo value) reOrderToDo,
    required TResult Function(_OnTapTodo value) onTapTodo,
    required TResult Function(_OnToogleTodo value) onToogleTodo,
  }) {
    return onToogleTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ReOrderTodo value)? reOrderToDo,
    TResult? Function(_OnTapTodo value)? onTapTodo,
    TResult? Function(_OnToogleTodo value)? onToogleTodo,
  }) {
    return onToogleTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ReOrderTodo value)? reOrderToDo,
    TResult Function(_OnTapTodo value)? onTapTodo,
    TResult Function(_OnToogleTodo value)? onToogleTodo,
    required TResult orElse(),
  }) {
    if (onToogleTodo != null) {
      return onToogleTodo(this);
    }
    return orElse();
  }
}

abstract class _OnToogleTodo implements HomeEvent {
  const factory _OnToogleTodo({required final TodoEntity todo}) =
      _$OnToogleTodoImpl;

  TodoEntity get todo;
  @JsonKey(ignore: true)
  _$$OnToogleTodoImplCopyWith<_$OnToogleTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  UIState<List<TodoEntity>> get stateDataListTodo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({UIState<List<TodoEntity>> stateDataListTodo});

  $UIStateCopyWith<List<TodoEntity>, $Res> get stateDataListTodo;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateDataListTodo = null,
  }) {
    return _then(_value.copyWith(
      stateDataListTodo: null == stateDataListTodo
          ? _value.stateDataListTodo
          : stateDataListTodo // ignore: cast_nullable_to_non_nullable
              as UIState<List<TodoEntity>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UIStateCopyWith<List<TodoEntity>, $Res> get stateDataListTodo {
    return $UIStateCopyWith<List<TodoEntity>, $Res>(_value.stateDataListTodo,
        (value) {
      return _then(_value.copyWith(stateDataListTodo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UIState<List<TodoEntity>> stateDataListTodo});

  @override
  $UIStateCopyWith<List<TodoEntity>, $Res> get stateDataListTodo;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateDataListTodo = null,
  }) {
    return _then(_$HomeStateImpl(
      stateDataListTodo: null == stateDataListTodo
          ? _value.stateDataListTodo
          : stateDataListTodo // ignore: cast_nullable_to_non_nullable
              as UIState<List<TodoEntity>>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.stateDataListTodo = const UIState<List<TodoEntity>>.idle()});

  @override
  @JsonKey()
  final UIState<List<TodoEntity>> stateDataListTodo;

  @override
  String toString() {
    return 'HomeState(stateDataListTodo: $stateDataListTodo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.stateDataListTodo, stateDataListTodo) ||
                other.stateDataListTodo == stateDataListTodo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateDataListTodo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final UIState<List<TodoEntity>> stateDataListTodo}) = _$HomeStateImpl;

  @override
  UIState<List<TodoEntity>> get stateDataListTodo;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
