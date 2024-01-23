import 'package:flutter/material.dart';

class InheritedThemeWidget extends InheritedWidget {
  final ValueChanged<bool> onThemeChanged;

  const InheritedThemeWidget(
      {Key? key, required this.onThemeChanged, required Widget child})
      : super(key: key, child: child);

  static of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedThemeWidget>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
