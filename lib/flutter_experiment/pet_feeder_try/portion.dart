import 'package:flutter/material.dart';
import 'package:flutter_reviewer/flutter_experiment/pet_feeder_try/history_provider.dart';
import 'package:provider/provider.dart';

class Portion extends StatefulWidget {
  const Portion({super.key});

  @override
  State<Portion> createState() => _PortionState();
}

class _PortionState extends State<Portion> {
  final int portionNumber = 60;
  var _isClicked = false;
  int _selectedIndex = -1;
  String _selectedIndexString = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 40.0, right: 40.0),
          width: MediaQuery.sizeOf(context).width,
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: portionNumber,
            itemBuilder: (context, index) {
              int num = index + 1;
              return Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    height: _selectedIndex == num ? 70 : 60,
                    width: _selectedIndex == num ? 70 : 60,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = num;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        '$num',
                        style: const TextStyle(
                          color: Colors.black38,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        // SizedBox(height: 20.0),
        // // const Text(
        // //   'Portion',
        // //   style: TextStyle(
        // //     color: Colors.grey,
        // //   ),
        // // ),
        // SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            setState(() {
              //selectedManualIndex = selectedManualIndex.toString() as String;
              _selectedIndexString = _selectedIndex.toString();
            });
            context
                .read<HistoryProvider>()
                .makeRecord(newRecord: _selectedIndexString);
            //Provider.of<HistoryProvider>(context, listen: false).makeRecord(newRecord: _selectedIndexString);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            minimumSize: Size(150, 40),
          ),
          child: const Text(
            'Manual',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
        Text(
          'what portion $_selectedIndexString,',
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
