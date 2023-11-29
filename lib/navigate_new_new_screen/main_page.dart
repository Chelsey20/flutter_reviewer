import 'package:flutter/material.dart';
import 'package:flutter_reviewer/navigate_new_new_screen/form.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigate New Screen: Push Pop',
      theme: ThemeData.light(),
      home: const MyForm(),
    );
  }
}
