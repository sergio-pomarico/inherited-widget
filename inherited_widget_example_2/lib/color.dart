import 'package:flutter/material.dart';
import 'package:inherited_widget_example_2/inherited.dart';

class Rectangle1 extends StatelessWidget {
  const Rectangle1({super.key, required this.position});

  final String position;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: InheritedColorsWidget.of(context)?.color1,
      width: double.infinity,
      child: Center(
        child: Text(
          position.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
    ));
  }
}

class Rectangle2 extends StatelessWidget {
  const Rectangle2({super.key, required this.position});

  final String position;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: InheritedColorsWidget.of(context)?.color2,
      width: double.infinity,
      child: Center(
        child: Text(
          position.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
    ));
  }
}

class ColorPage extends StatefulWidget {
  const ColorPage({super.key, required this.title});
  final String title;

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  Color color1 = Colors.red;
  Color color2 = Colors.lightGreen;

  void onChangeColors() {
    setState(() {
      color1 = color1 == Colors.red ? Colors.blue : Colors.red;
      color2 = color2 == Colors.lightGreen ? Colors.yellow : Colors.lightGreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedColorsWidget(
      color1: color1,
      color2: color2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(widget.title),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Rectangle1(
              position: 'Top',
            ),
            Rectangle2(
              position: 'Bottom',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primary,
          onPressed: onChangeColors,
          tooltip: 'Increment',
          child: const Icon(
            Icons.change_circle,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    );
  }
}
