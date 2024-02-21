import 'package:flutter/material.dart';
import 'package:flutter_reviewer/flutter_experiment/pet_feeder_try/home_feeder.dart';
import 'package:provider/provider.dart';
import 'package:flutter_reviewer/flutter_experiment/pet_feeder_try/history_provider.dart';

void main() {
  runApp(
      // ignore: prefer_const_constructors
      MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (ctx) => HistoryProvider(),
    ),
  ], child: RojecoPetFeeder()));
}

class RojecoPetFeeder extends StatelessWidget {
  const RojecoPetFeeder({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Rojeco Pet Feeder',
      home: HomeFeeder(),
    );
  }
}
