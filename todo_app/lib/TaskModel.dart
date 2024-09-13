import 'package:flutter/material.dart';

class Task {
  final String title;
  bool isCompleted;
  Task({required this.title,required this.isCompleted});
  void isDone(){
    isCompleted=!isCompleted;
  }
}
/*this function is typically used to mark something as completed or not completed in a to-do list or task-tracking app. */