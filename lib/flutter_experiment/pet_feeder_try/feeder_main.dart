import 'package:flutter/material.dart';
import 'package:flutter_reviewer/flutter_experiment/pet_feeder_try/history.dart';
import '../portion.dart';
import 'meal_plan.dart';

class PetFeedingScreen extends StatefulWidget {
  const PetFeedingScreen({super.key});

  @override
  State<PetFeedingScreen> createState() => _PetFeedingScreenState();
}

class _PetFeedingScreenState extends State<PetFeedingScreen> {
  // final int portionNumber = 60;
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
            fontSize: 16.0,
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
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 13.0),
          child: GestureDetector(
            child: const ListTile(
              leading: Icon(
                Icons.timelapse_sharp,
                color: Colors.white,
                size: 25.0,
              ),
              title: Text(
                'Meal Plan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 25.0,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MealPlanScreen()));
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Divider(thickness: 1.0, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 10.0),
          child: GestureDetector(
            child: const ListTile(
              leading: Icon(
                Icons.note_alt_outlined,
                color: Colors.white,
                size: 25.0,
              ),
              title: Text(
                'Feed Record',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 25.0,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FeedRecordScreen()));
            },
          ),
        )
      ],
    );
  }

  Widget middleCircle() {
    return Container(
      width: 250.0,
      height: 150.0,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Container(
        width: 240.0,
        height: 140.0,
        //margin: EdgeInsets.all(1.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2.0,
              color: Colors.grey,
            )),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('lib/assets/feeding_bowl.png'),
              width: 40.0,
              height: 40.0,
            ),
            Text(
              'Standby',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
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
            Flexible(
              flex: 3,
              child: Container(
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
            ),
            SizedBox(height: 30.0),
            Flexible(child: Portion()),
          ],
        ),
      ),
    );
  }
}
