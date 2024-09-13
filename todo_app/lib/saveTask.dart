import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/TaskModel.dart';

class Savetask extends ChangeNotifier {
  final List<Task> _task = [
    Task(title: 'Learning Flutter',isCompleted: false),
    Task(title: "Coding",isCompleted: false),
  ];
  List<Task> get tasks => _task;

  void addTask(Task task) {
    _task.add(task);
    notifyListeners();
  }
  void isCheck(int index){
    tasks[index].isDone();
    notifyListeners();
  }
}
