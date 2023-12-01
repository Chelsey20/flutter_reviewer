import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({super.key, required this.productName});

  String productName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

