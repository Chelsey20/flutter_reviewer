import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          child: MyListView(),
          color: Colors.black,
        ),
      ),
    ),
  );
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          tileColor: Colors.orangeAccent,
          title: Text('List View Widget'),
          iconColor: Colors.orangeAccent,
          onTap: () {},
          leading: Icon(Icons.person),
          trailing: Icon(Icons.menu),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Divider(color: Colors.white),
    );
  }
}
