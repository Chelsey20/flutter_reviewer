import 'package:flutter/material.dart';
import 'package:flutter_reviewer/flutter_experiment/pet_feeder_try/feed_record_screen.dart';
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
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

  var PortionNumber = false;
  Widget portion() {
    return SizedBox(
      //width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: portionNumber,
          itemBuilder: (context, index) {
            int num = index + 1;

            return Align(
              alignment: Alignment.topCenter,
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                // padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  '$num',
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget quickButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: Size(150, 40),
      ),
      child: const Text(
        'Quick',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
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
            Container(
              height: 500.0,
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
              child: Column(
                children: [
                  header(),
                  const SizedBox(height: 300),
                  taskList(),
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Flexible(child: portion()),
            const Text(
              'Portion',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
              ),
            ),
            quickButton(),
          ],
        ),
      ),
    );
  }
}
