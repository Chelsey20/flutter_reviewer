import 'package:flutter/material.dart';

void main() => runApp(const MyWallet());

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Wallet',
      theme: ThemeData.light(),
      home: const MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.qr_code_outlined,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
        actions: const <Widget>[
          TextButton(
            onPressed: null,
            child: Text("Edit", style: TextStyle(color: Colors.blue),),
          ),
        ],
      ),
      body:  const Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('lib/assets/satoru.jpeg'),
            ),
          )
        ],
      )
    );
  }
}
