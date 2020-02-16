import 'package:flutter/material.dart';
import 'package:toggle_icon_button/toggle_icon_button.dart';

main() => runApp(ExampleApp());

class ExampleApp extends StatefulWidget {
  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          ToggleIconButton(
            icon1: Icons.wb_sunny,
            icon2: Icons.cloud,
            onPressed: () {
              print("You've clicked!");
            },
          ),
        ],
      ),
      body: Center(
        child: ToggleIconButton(
          icon1: Icons.wb_sunny,
          icon2: Icons.cloud,
          onPressed: () {
            print("You've clicked!");
          },
        ),
      ),
    );
  }
}
