import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  String record = '';

  HistoryProvider({
    this.record = 'Empty',
  });

  // void addText({
  //   required String newRecord,
  // }) async {
  //   record = newRecord;
  //   notifyListeners();
  // }

  // Widget makeRecord(String newRecord) {
  // return Column(
  //   children: [
  //     ListTile(
  //       title: Text('$newRecord'),
  //     ),
  //   ],
  // );
  // }
  // @override
  // notifyListeners();

  Future<Widget> makeRecord({required String newRecord}) async {
    record = newRecord;
    notifyListeners();

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            trailing: Icon(Icons.confirmation_num_sharp),
            title: Text('$newRecord'),
          )
        ]);
  }
}
