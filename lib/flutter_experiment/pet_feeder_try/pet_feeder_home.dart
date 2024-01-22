import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyPetFeederApp(),
    ),
  );
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
        title: CircleAvatar(
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
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          Text('All Devices'),
          Container(child:
          Row(
            children: [
              ListTile(title: Text("ROJECO Pet Feeder"),),
            ],
          )
            ,)
        ],
      ),
    );
  }
}
