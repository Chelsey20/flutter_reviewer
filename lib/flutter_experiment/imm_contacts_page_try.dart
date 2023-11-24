import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyContactsList(),
    ),
  );
}

class MyContactsList extends StatelessWidget {
  const MyContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
                top: 100.0, left: 15.0, right: 15.0, bottom: 25.0),
            child: ListTile(
              title: const Text('My Wallet'),
              tileColor: Colors.white,
              leading: Icon(Icons.attach_money),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 25, left: 15.0, right: 15.0),
            child: const Column(
              children: [
                ListTile(
                  title: Text('Notification and Sounds'),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                  ),
                  leading: Icon(Icons.message_outlined),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  title: Text('Privacy and Security'),
                  tileColor: Colors.white,
                  leading: Icon(Icons.lock),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),

                ),
                ListTile(
                  title: Text('Data and Storage'),
                  tileColor: Colors.white,
                  leading: Icon(Icons.folder_copy_outlined),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  title: Text('Language'),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                  ),
                  leading: Icon(Icons.language_sharp),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: const Column(
              children: [
                ListTile(
                  title: Text('Linked Devices'),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  leading: Icon(Icons.devices),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  title: Text('Invite Friends'),
                  tileColor: Colors.white,
                  leading: Icon(Icons.heart_broken_rounded),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  title: Text('App Info'),
                  tileColor: Colors.white,
                  leading: Icon(Icons.notification_add),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  title: Text('Log out'),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  leading: Icon(Icons.logout),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// container(listtile) > container(column(list tile)) > container(column(list tile))
