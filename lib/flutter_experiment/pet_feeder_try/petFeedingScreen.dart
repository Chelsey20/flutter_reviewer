import 'package:flutter/material.dart';
import 'meal_plan_screen.dart';

class PetFeedingScreen extends StatefulWidget {
  const PetFeedingScreen({super.key});

  @override
  State<PetFeedingScreen> createState() => _PetFeedingScreenState();
}

class _PetFeedingScreenState extends State<PetFeedingScreen> {
  final int portionNumber = 60;
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

  Widget taskList() {
    return Column(
      children: [
        GestureDetector(
          child: const ListTile(
            leading: Icon(Icons.timelapse_sharp),
            title: Text('Meal Plan'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MealPlanScreen()));
          },
        ),
        const ListTile(
          leading: Icon(Icons.note_alt_outlined),
          title: Text('Feed Record'),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
        )
      ],
    );
  }

  Widget portion() {
    return SizedBox(
      // height: 200,
      // width: 100,
      width: double.infinity,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: portionNumber,
          itemBuilder: (context, index) {
            int num = index + 1;

            return Text(
              '$num  ',
              style: const TextStyle(
                color: Colors.black,
              ),
            );
          }),
    );
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        portionNumber,
        (index) => Flexible(
          child: ListTile(
            title: Text(
              '$index+1',
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 600.0,
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
            child: Column(
              children: [
                header(),
                const SizedBox(height: 10),
                taskList(),
              ],
            ),
          ),
          Expanded(child: portion()),
        ],
      ),
    );
  }
}
