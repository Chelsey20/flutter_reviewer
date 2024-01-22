import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_reviewer/post_api/models/pokemon1.dart';
import '../models/pokedex_model.dart';
import '../services/remote_services.dart';

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
  PokedexJson? pokedexData;
  var isLoading = false;
  var index = 1;

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
              const Text(
                'Pokedex of Anomalies',
                style: TextStyle(fontWeight: FontWeight.bold),

              ),

              GestureDetector(
                onTap: (){
                  Random random = new Random();
                  int randomNumber = random.nextInt(100) + 1;

                  setState(() {
                    getData('https://pokeapi.co/api/v2/pokemon/${randomNumber}');
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Pok%C3%A9_Ball.svg/2057px-Pok%C3%A9_Ball.svg.png'),
                    ),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Container(
            //padding: EdgeInsets.all(150.0),
            width: 320,
            //margin: EdgeInsets.only(right: 30.0, left: 30.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 3.0,
              ),
            ),
            child: Image.network(pokedexData!.sprites.frontShiny, fit: BoxFit.fill,),
          ),
          Container(
            height: 180,
            margin: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(99, 99, 99, 1),
                borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: [
                SizedBox(height: 4.0),
                Container(
                  height: 30.0,
                  width: 380.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromRGBO(141, 199, 63, 1),
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 3.0,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('${pokedexData == null ? 'POKEDEX NAME' : pokedexData?.name}'),
                      Text(pokedexData!.types[0].type.name),
                    ],
                  ),
                ),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: (){
                          if(index == 1) {
                            return;
                          }
                          setState(() {
                            getData('https://pokeapi.co/api/v2/pokemon/${--index}');
                          });
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    Container(
                        height: 100.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color.fromRGBO(141, 199, 63, 1),
                            border: Border.all(
                              color: Colors.black,
                              width: 3.0,
                            )),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Statistics:'),
                              SizedBox(height: 10.0,),
                              Text(pokedexData!.stats[0].stat.name),
                            ],
                          ),
                        )),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      hoverColor: Colors.white,
                      onPressed: () async {
                        setState(() {
                          getData('https://pokeapi.co/api/v2/pokemon/${++index}');
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  getData(uri) async {
    pokedexData = await RemoteService().getPokeDex(uri);
    if (pokedexData != null){
      setState(() {
        isLoading = true;
      });
    }

    @override
    void initState() {
      getData('https://pokeapi.co/api/v2/pokemon/2');
    }
  }

