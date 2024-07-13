class TodoEntity {
  final String id;
  final String title;
  final String description;
  final bool isCompleted;
  final DateTime? dueDate;

  const TodoEntity({
    required this.id,
    this.dueDate,
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  TodoEntity copyWith({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
    DateTime? dueDate,
  }) {
    return TodoEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
      dueDate: dueDate ?? this.dueDate,
    );
  }
}
