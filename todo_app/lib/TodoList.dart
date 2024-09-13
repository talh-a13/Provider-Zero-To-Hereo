import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/saveTask.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/add-todo-screen");
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<Savetask>(builder: (context, taskProvider, child) {
        return ListView.builder(
            itemCount: taskProvider.tasks.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text(
                  taskProvider.tasks[index].title,
                  style: TextStyle(
                      decoration: taskProvider.tasks[index].isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
                trailing: Wrap(
                  children: [
                    Checkbox(
                        value: taskProvider.tasks[index].isCompleted,
                        onChanged: (_) {
                          context.read<Savetask>().isCheck(index);
                        })
                  ],
                ),
              );
            });
      }),
    );
  }
}
