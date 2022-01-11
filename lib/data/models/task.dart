enum Status { done, inProgress }

// TODO: Task is missing category attribute
class Task {
  int? id;
  String name;
  String description;
  Status status;

  Task(
      {this.id,
      required this.name,
      required this.description,
      required this.status});

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      'name': name,
      'title': description,
      'status': status == Status.done ? 'done' : 'in progress'
    };
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    var id = map['id'];
    var name = map['name'];
    var description = map['description'];
    var status = map['status'] == 'done' ? Status.done : Status.inProgress;

    return Task(id: id, name: name, description: description, status: status);
  }
}
