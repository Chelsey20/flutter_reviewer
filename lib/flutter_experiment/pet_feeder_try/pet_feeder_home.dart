import 'package:flutter/material.dart';

void main() {
  runApp(
    // ignore: prefer_const_constructors
    MaterialApp(
      title: 'Rojeco App',
      home: MyPetFeederApp(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
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
      backgroundColor: Colors.white54,
      appBar: AppBar(
        centerTitle: false,
        title: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT9XT89rHOJLr7fOg3wSlQLss0SVKd11QLerGhgXq2ZBB2IGGN1'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle,
              color: Colors.orange,
              size: 30.0,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('All Devices',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("..."),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            width: 500.0,
            height: 120.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 5.0,
                    blurRadius: 10,
                    offset: Offset(6, 5),
                  )
                ]),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_box,
              ),
              label: 'Scene,'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Me,'),
        ],
      ),
    );
  }
}
