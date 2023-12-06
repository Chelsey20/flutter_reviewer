import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
          home: MyRadioButtonPractice()
    )
  );
}

enum MafiaMemberList { citizen, doctor, police, mafia }

class MyRadioButtonPractice extends StatefulWidget {
  MyRadioButtonPractice({super.key});

  @override
  State<MyRadioButtonPractice> createState() => _MyRadioButtonPracticeState();
}

class _MyRadioButtonPracticeState extends State<MyRadioButtonPractice> {
  MafiaMemberList? _memberType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Radio Button Practice',
        ),
      ),
      body: Column(
        children: [
          RadioListTile(
            value: MafiaMemberList.citizen,
            title: Text(MafiaMemberList.citizen.name),
            groupValue: _memberType,
            onChanged: (val){
              setState((){
                _memberType = val;
              });
            },
          ),
          RadioListTile(
            value: MafiaMemberList.police,
            title: Text(MafiaMemberList.police.name),
            groupValue: _memberType,
            onChanged: (val){
              setState((){
                _memberType = val;
              });
            },
          ),
          RadioListTile(
            value: MafiaMemberList.doctor,
            title: Text(MafiaMemberList.doctor.name),
            groupValue: _memberType,
            onChanged: (val){
              setState((){
                _memberType = val;
              });
            },
          ),
          RadioListTile(
            value: MafiaMemberList.mafia,
            title: Text(MafiaMemberList.mafia.name),
            groupValue: _memberType,
            onChanged: (val){
              setState((){
                _memberType = val;
              });
            },
          ),
        ],
      ),
    );
  }
}