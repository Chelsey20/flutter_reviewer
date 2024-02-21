import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reviewer/flutter_experiment/pet_feeder_try/history_provider.dart';

class FeedRecordScreen extends StatefulWidget {
  const FeedRecordScreen({super.key});

  @override
  State<FeedRecordScreen> createState() => _FeedRecordScreenState();
}

class _FeedRecordScreenState extends State<FeedRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: ListTile(
          trailing: Icon(Icons.confirmation_num_sharp),
          title: Text(
            context.watch<HistoryProvider>().record,
          )),
    );
  }
}
