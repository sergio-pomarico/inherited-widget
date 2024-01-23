import 'package:flutter/material.dart';

class InheritedColorsWidget extends InheritedWidget {
  final Color color1;
  final Color color2;

  const InheritedColorsWidget(
      {Key? key,
      required this.color1,
      required this.color2,
      required Widget child})
      : super(key: key, child: child);

  static of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedColorsWidget>();

  @override
  bool updateShouldNotify(InheritedColorsWidget oldWidget) =>
      color1 != oldWidget.color1 || color2 != oldWidget.color2;
}
