import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  String record = '';

  void makeRecord({required String newRecord}) async {
    record = newRecord;
    notifyListeners();
  }
}
