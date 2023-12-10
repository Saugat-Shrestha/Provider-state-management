import 'package:flutter/material.dart';
import 'package:hello/dark%20and%20light/themeProvider.dart';
import 'package:provider/provider.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: Text("light mode"),
            value: ThemeMode.light,
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setTheme,
          ),
          RadioListTile(
            title: Text("dark mode"),
            value: ThemeMode.dark,
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setTheme,
          ),
          RadioListTile(
            title: Text("System mode"),
            value: ThemeMode.system,
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setTheme,
          ),
        ],
      ),
    );
  }
}
