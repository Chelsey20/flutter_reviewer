import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  String record = '';

  HistoryProvider({
    this.record = 'Empty',
  });

  void addText({
    required String newRecord,
  }) async {
    record = newRecord;
    notifyListeners();
  }

  // Widget makeRecord(int index) {
  //   return Text('00001');
  // }
  // @override
  // notifyListeners();
}
