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
        appBar: AppBar(
        centerTitle: false,
        title: const CircleAvatar(
        backgroundImage: NetworkImage(
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT9XT89rHOJLr7fOg3wSlQLss0SVKd11QLerGhgXq2ZBB2IGGN1'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle, color: Colors.orange, size: 30.0,),
          )
        ],
        ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('All Devices', style: TextStyle(fontWeight: FontWeight.bold)),
              Text("..."),
            ],
          ),
          Container(
            
          )
        ],
      )
    );
  }
}
