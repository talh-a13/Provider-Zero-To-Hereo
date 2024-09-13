import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/TaskModel.dart';
import 'package:todo_app/main.dart';
import 'package:todo_app/saveTask.dart';

class AddToDo extends StatefulWidget {
  const AddToDo({super.key});

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {
  @override
  final Controller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextFormField(
              controller: Controller,
              autofocus: true,
              decoration: const InputDecoration(hintText: "Title"),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<Savetask>().addTask(
                      Task(title: Controller.text, isCompleted: false));
                  Controller.clear();
                  Navigator.of(context).pop();
                },
                child: const Text("Add"),
                ),
                
          ],
        ),
      ),
    );
  }
}
