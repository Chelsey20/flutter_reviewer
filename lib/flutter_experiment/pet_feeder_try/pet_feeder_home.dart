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
  int myIndex = 0;

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
          Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'All Devices',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                MenuAnchor(
                  builder: (BuildContext context, MenuController controller,
                      Widget? child) {
                    return IconButton(
                      onPressed: () {
                        if (controller.isOpen) {
                          controller.close();
                        } else {
                          controller.open();
                        }
                      },
                      icon: Icon(Icons.more_horiz),
                    );
                  },
                  menuChildren: const [
                    ListTile(
                      leading: Icon(Icons.grid_view),
                      title: Text('Grid View'),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Room Management'),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Device Management'),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25.0, right: 30.0, top: 25.0),
            padding: const EdgeInsets.all(25.0),
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
            child: const Row(
              children: [
                Image(
                  image: AssetImage('lib/assets/rojeco_single_pet_feeder.png'),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Center(
                  child: Text(
                    'ROJECO Pet Feeder',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        selectedItemColor: Colors.orange,
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
              label: 'Scene'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Me'),
        ],
      ),
    );
  }
}
