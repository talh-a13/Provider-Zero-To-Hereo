import 'package:flutter/material.dart';
import 'package:flutter_provider_basics/secondExample.dart';
import 'package:flutter_provider_basics/Provider/count_provider.dart';
import 'package:flutter_provider_basics/count_example.dart';
import 'package:flutter_provider_basics/slider_provider.dart';
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
            // Single Provider
            create: (_) => CountProvider(),
          ),
          ChangeNotifierProvider(
            // Single Provider
            create: (_) => SliderProvider(),
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: second(),
        ));
  }
}
