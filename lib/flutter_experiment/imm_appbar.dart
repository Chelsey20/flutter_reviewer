import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: MyAppBar()
    )
  );
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Edit', style: TextStyle(color: Colors.blue),),
            Text('Chats', style: TextStyle(color: Colors.black),),
            Icon(Icons.add, color: Colors.blue,),
          ],
        ),
      ),
    );
  }
}
