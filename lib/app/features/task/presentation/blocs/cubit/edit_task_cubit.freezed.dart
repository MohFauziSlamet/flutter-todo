// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditTaskState {
  TodoEntity get selectedTodo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTaskStateCopyWith<EditTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskStateCopyWith<$Res> {
  factory $EditTaskStateCopyWith(
          EditTaskState value, $Res Function(EditTaskState) then) =
      _$EditTaskStateCopyWithImpl<$Res, EditTaskState>;
  @useResult
  $Res call({TodoEntity selectedTodo});
}

/// @nodoc
class _$EditTaskStateCopyWithImpl<$Res, $Val extends EditTaskState>
    implements $EditTaskStateCopyWith<$Res> {
  _$EditTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTodo = null,
  }) {
    return _then(_value.copyWith(
      selectedTodo: null == selectedTodo
          ? _value.selectedTodo
          : selectedTodo // ignore: cast_nullable_to_non_nullable
              as TodoEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditTaskStateImplCopyWith<$Res>
    implements $EditTaskStateCopyWith<$Res> {
  factory _$$EditTaskStateImplCopyWith(
          _$EditTaskStateImpl value, $Res Function(_$EditTaskStateImpl) then) =
      __$$EditTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TodoEntity selectedTodo});
}

/// @nodoc
class __$$EditTaskStateImplCopyWithImpl<$Res>
    extends _$EditTaskStateCopyWithImpl<$Res, _$EditTaskStateImpl>
    implements _$$EditTaskStateImplCopyWith<$Res> {
  __$$EditTaskStateImplCopyWithImpl(
      _$EditTaskStateImpl _value, $Res Function(_$EditTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTodo = null,
  }) {
    return _then(_$EditTaskStateImpl(
      selectedTodo: null == selectedTodo
          ? _value.selectedTodo
          : selectedTodo // ignore: cast_nullable_to_non_nullable
              as TodoEntity,
    ));
  }
}

/// @nodoc

class _$EditTaskStateImpl implements _EditTaskState {
  const _$EditTaskStateImpl(
      {this.selectedTodo = const TodoEntity(
          id: '',
          title: '',
          description: '',
          isCompleted: false,
          dueDate: null)});

  @override
  @JsonKey()
  final TodoEntity selectedTodo;

  @override
  String toString() {
    return 'EditTaskState(selectedTodo: $selectedTodo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskStateImpl &&
            (identical(other.selectedTodo, selectedTodo) ||
                other.selectedTodo == selectedTodo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTodo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskStateImplCopyWith<_$EditTaskStateImpl> get copyWith =>
      __$$EditTaskStateImplCopyWithImpl<_$EditTaskStateImpl>(this, _$identity);
}

abstract class _EditTaskState implements EditTaskState {
  const factory _EditTaskState({final TodoEntity selectedTodo}) =
      _$EditTaskStateImpl;

  @override
  TodoEntity get selectedTodo;
  @override
  @JsonKey(ignore: true)
  _$$EditTaskStateImplCopyWith<_$EditTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
