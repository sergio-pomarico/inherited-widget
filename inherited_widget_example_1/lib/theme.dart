import 'package:flutter/material.dart';
import 'package:inherited_widget/inherited.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key, required this.title});

  final String title;

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  bool isCheck = false;

  onChanged(bool value) {
    setState(() {
      isCheck = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Change Theme'),
                Switch(
                    value: isCheck,
                    onChanged: (value) {
                      setState(() {
                        isCheck = value;
                      });
                      InheritedThemeWidget.of(context)?.onThemeChanged(value);
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
