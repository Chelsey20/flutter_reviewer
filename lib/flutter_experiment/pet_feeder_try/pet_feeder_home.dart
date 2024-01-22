import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyPetFeederApp()));
}

class MyPetFeederApp extends StatefulWidget {
  const MyPetFeederApp({super.key});

  @override
  State<MyPetFeederApp> createState() => _MyPetFeederAppState();
}

class _MyPetFeederAppState extends State<MyPetFeederApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBar(
        centerTitle: false,
        title: const CircleAvatar(
        backgroundImage: NetworkImage(
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT9XT89rHOJLr7fOg3wSlQLss0SVKd11QLerGhgXq2ZBB2IGGN1'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle, color: Colors.orange,),
          )
        ],
        ),
    );
  }
}
