import 'package:flutter/material.dart';

class MealPlanScreen extends StatefulWidget {
  const MealPlanScreen({super.key});

  @override
  State<MealPlanScreen> createState() => _MealPlanScreenState();
}

class _MealPlanScreenState extends State<MealPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Schedule'),
        ),
        body: const Column(
          children: [
            ListTile(
              title: Text('List 1'),
            ),
            ListTile(
              title: Text('List 2'),
            )
          ],
        ));
  }
}
