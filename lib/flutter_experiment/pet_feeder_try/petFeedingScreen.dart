import 'package:flutter/material.dart';

class PetFeedingScreen extends StatefulWidget {
  const PetFeedingScreen({super.key});

  @override
  State<PetFeedingScreen> createState() => _PetFeedingScreenState();
}

class _PetFeedingScreenState extends State<PetFeedingScreen> {
  //functions
  Widget header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        const Text(
          'ROJECO Pet Feeder',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: 770.0,
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
            child: Column(
              children: [
                header(),
                ListTile(
                  leading: Icon(Icons.timelapse_sharp),
                  title: Text('Meal Plan'),
                  trailing: Icon(Icons.arrow),
                )
              ],
            )),
      ),
    );
  }
}
