import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/homepage.dart';
import 'package:weather_app/theme.dart';
import 'package:weather_app/theme_provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: myApp()));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const homepage(),
      theme: Provider.of<ThemeProvider>(context).themedata,
      debugShowCheckedModeBanner: false,
    );
  }
}
