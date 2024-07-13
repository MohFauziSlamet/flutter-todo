import 'package:flutter/foundation.dart';

// ignore_for_file: library_private_types_in_public_api

class GetLocalListTodoModel {
  final List<TodoModel> data;
  GetLocalListTodoModel({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((x) => x.toJson()).toList(),
    };
  }

  factory GetLocalListTodoModel.fromJson(Map<dynamic, dynamic> map) {
    return GetLocalListTodoModel(
      data: (map['data'] == null)
          ? []
          : List<TodoModel>.from(
              map['data']?.map(
                (x) => TodoModel.fromJson(x),
              ),
            ),
    );
  }

  GetLocalListTodoModel copyWith({
    List<TodoModel>? data,
  }) {
    return GetLocalListTodoModel(
      data: data ?? this.data,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetLocalListTodoModel && listEquals(other.data, data);
  }

  @override
  int get hashCode => data.hashCode;
}

class TodoModel {
  final String createdAt;
  final String id;
  final String title;
  final String description;
  final String dueDate;
  final bool isCompleted;
  TodoModel(
      {required this.createdAt,
      required this.isCompleted,
      required this.id,
      required this.title,
      required this.description,
      required this.dueDate});

  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt,
      'id': id,
      'title': title,
      'description': description,
      'dueDate': dueDate,
      'isCompleted': isCompleted,
    };
  }

  factory TodoModel.fromJson(Map<dynamic, dynamic> map) {
    return TodoModel(
      isCompleted: map['isCompleted'] ?? false,
      createdAt: map['createdAt'] ?? '',
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      dueDate: map['dueDate'] ?? '',
    );
  }

  TodoModel copyWith({
    String? createdAt,
    String? id,
    String? title,
    String? description,
    String? dueDate,
    bool? isCompleted,
  }) {
    return TodoModel(
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      dueDate: dueDate ?? this.dueDate,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TodoModel &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.dueDate == dueDate &&
        other.isCompleted == isCompleted;
  }

  @override
  int get hashCode {
    return createdAt.hashCode ^
        id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        dueDate.hashCode ^
        isCompleted.hashCode;
  }
}
