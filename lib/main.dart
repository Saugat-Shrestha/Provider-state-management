import 'package:flutter/material.dart';
import 'package:hello/Favorite/FavoriteScreen.dart';
import 'package:hello/Favorite/favourite_provider.dart';
import 'package:hello/HomePage.dart';
import 'package:hello/dark%20and%20light/darl_theme.dart';
import 'package:hello/dark%20and%20light/themeProvider.dart';
import 'package:hello/provide.dart';
import 'package:hello/sample.dart';
import 'package:hello/sampleProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => count()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => favouriteprovider()),
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ],
        child: Builder(
          builder: (BuildContext context) {
            final themechanger = Provider.of<ThemeChanger>(context);
            return MaterialApp(
              themeMode: themechanger.themeMode,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                brightness: Brightness.light,
                primaryColor: Colors.amber,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
              ),
              home: const DarkThemeScreen(),
            );
          },
        ));
  }
}
