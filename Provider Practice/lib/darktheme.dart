import 'package:flutter/material.dart';
import 'package:flutter_provider_basics/theme_changer_provider.dart';
import 'package:provider/provider.dart';

class Darktheme extends StatefulWidget {
  const Darktheme({super.key});

  @override
  State<Darktheme> createState() => _DarkthemeState();
}

class _DarkthemeState extends State<Darktheme> {
  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Changing Using Provider Package"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: const Text(" Light Mode"),
              value: ThemeMode.light,
              groupValue: themechange.themeMode,
              onChanged: themechange.settheme),
          RadioListTile<ThemeMode>(
              title: const Text(" Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themechange.themeMode,
              onChanged: themechange.settheme),
          RadioListTile<ThemeMode>(
              title: const Text(" System Mode"),
              value: ThemeMode.system,
              groupValue: themechange.themeMode,
              onChanged: themechange.settheme)
        ],
      ),
    );
  }
}
