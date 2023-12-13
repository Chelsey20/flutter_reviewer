import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyPokedex(),
    ),
  );
}

class MyPokedex extends StatefulWidget {
  const MyPokedex({super.key});

  @override
  State<MyPokedex> createState() => _MyPokedexState();
}

class _MyPokedexState extends State<MyPokedex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(40.0),
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(1, 255, 255, 1),
                  border: Border.all(color: Colors.black),
                ),
              ),
              Text(
                'Pokedex of Anomalies',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(40.0),
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Pok%C3%A9_Ball.svg/2057px-Pok%C3%A9_Ball.svg.png'),
                  ),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(150.0),
            margin: EdgeInsets.only(right: 30.0, left: 30.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 3.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(25.0),
            height: 120.0,
            width: 390.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(99, 99, 99, 1),
              borderRadius: BorderRadius.circular(5.0)
            ),
            child: Column(
              children: [
                Container(

                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
