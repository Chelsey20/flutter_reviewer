import 'package:flutter/material.dart';

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
    );
  }
}
