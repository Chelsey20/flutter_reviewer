import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyScaffold()
      ),
    ),
  );
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      print('Hello World');
        }, child: Text('Click Me'));
  }
}

