import 'package:flutter/material.dart';
import 'package:inherited_widget_example_2/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const ColorPage(title: 'Inherited Widget Demo'),
    );
  }
}
