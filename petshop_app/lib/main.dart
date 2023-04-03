import 'package:flutter/material.dart';
import 'package:petshop_app/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => DarkMode(), child: MyApp()));
}

// ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var mainTheme = ThemeData.light();
  var darkTheme = ThemeData.dark();

  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<DarkMode>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const splashScreen(),
      theme: themeMode.darkMode ? mainTheme : darkTheme,
    );
  }
}

class DarkMode with ChangeNotifier {
  bool darkMode = true;

  ///by default it is true
  ///made a method which will execute while switching
  changeMode() {
    darkMode = !darkMode;
    notifyListeners();

    ///notify the value or update the widget value
  }
}
