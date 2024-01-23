import 'package:flutter/material.dart';
import 'package:inherited_widget/inherited.dart';
import 'package:inherited_widget/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return InheritedThemeWidget(
      onThemeChanged: (bool value) {
        setState(() {
          isDark = value;
        });
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: isDark ? ThemeData.dark() : ThemeData.light(),
        home: const ThemePage(title: 'Inherited Widget Demo'),
      ),
    );
  }
}
