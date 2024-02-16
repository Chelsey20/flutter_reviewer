import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  String record = '';

  HistoryProvider({
    this.record = '',
  });

  Widget makeRecord(int index) {
    return const ListTile(
      title: Text('00001'),
    );
  }

  @override
  notifyListeners();
}
