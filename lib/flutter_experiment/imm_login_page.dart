import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
          home: MyLoginPage(
          )
      )
  );
}

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 150.0,
          height: 150.0,
          
          child: Card(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Hey Talk',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            )
        ),
      )
    );
  }
}
