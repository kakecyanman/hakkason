import 'package:uuid/uuid.dart';

class Todo {
  String id;
  String title;
  String name;
  DateTime dueDate;
  String note;

  Todo(this.title, this.name, this. dueDate, this.note);
  Todo.newTodo() {
    title = "";
    dueDate = DateTime.now();
    note = "";
  }

  Todo clone() {
    Todo newTodo = Todo(title, name, dueDate, note);
    newTodo.id = id;
    return newTodo;
  }

  assignUUID() {
    id = Uuid().v4();
  }
}