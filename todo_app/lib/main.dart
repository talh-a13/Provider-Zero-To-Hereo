import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Add_to_do.dart';
import 'package:todo_app/saveTask.dart';
import 'TodoList.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Savetask())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        initialRoute: '/',
        routes: {'/': (_) => TodoList(), '/add-todo-screen': (_) => AddToDo()},
      ),
    );
  }
}
