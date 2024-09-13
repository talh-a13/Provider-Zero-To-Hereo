import 'package:flutter/material.dart';
import 'package:flutter_provider_basics/darktheme.dart';
import 'package:flutter_provider_basics/Provider/count_provider.dart';
import 'package:flutter_provider_basics/slider_provider.dart';
import 'package:flutter_provider_basics/theme_changer_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CountProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => SliderProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ThemeChanger(),
          ),
        ],
        child: Builder(builder: (BuildContext context) {
          final themechange = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            themeMode: themechange.themeMode,
            theme: ThemeData(brightness: Brightness.light),
            darkTheme: ThemeData(brightness: Brightness.dark),
            debugShowCheckedModeBanner: false,
            home: const Darktheme(),
          );
        }));
  }
}
