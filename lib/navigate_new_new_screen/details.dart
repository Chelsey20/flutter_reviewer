import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({super.key, required this.productName, required this.productName2});

  String productName;
  String productName2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      // title: Text('${int.parse(productName2) + int.parse(productName)}'),
        title: Text(productName),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.account_balance_outlined),
              title: Text(productName),
            )
          ],
        ),
      )
    );
  }
}

