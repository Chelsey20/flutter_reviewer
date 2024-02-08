import 'package:flutter/material.dart';
import 'package:flutter_reviewer/flutter_experiment/pet_feeder_try/history.dart';
import 'meal_plan.dart';

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
            leading: Icon(
              Icons.timelapse_sharp,
              color: Colors.white,
            ),
            title: Text(
              'Meal Plan',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MealPlanScreen()));
          },
        ),
        GestureDetector(
          child: const ListTile(
            leading: Icon(
              Icons.note_alt_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Feed Record',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FeedRecordScreen()));
          },
        )
      ],
    );
  }

  Widget portion() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: portionNumber,
          itemBuilder: (context, index) {
            int num = index + 1;

            return Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    '$num',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget middleCircle() {
    return Container(
      width: 150.0,
      height: 150.0,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Standby',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 500.0,
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
              child: Column(
                children: [
                  header(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  middleCircle(),
                  const SizedBox(height: 100),
                  taskList(),
                ],
              ),
            ),
            Flexible(child: portion()),
          ],
        ),
      ),
    );
  }
}
