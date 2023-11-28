import 'package:flutter/material.dart';

void main() => runApp(const TryStatelessClass());

class TryStatelessClass extends StatelessWidget {
  const TryStatelessClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful Widget Flutter"),
          centerTitle: true,
        ),
        body: const TryStatefulClass(),
      ),
    );
  }
}

class TryStatefulClass extends StatefulWidget {
  const TryStatefulClass({super.key});

  @override
  State<TryStatefulClass> createState() => _TryStatefulClassState();
}

class _TryStatefulClassState extends State<TryStatefulClass> {

  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("Nike Shoes"),
          trailing: IconButton(icon: liked? (const Icon(Icons.favorite)) : (const Icon(Icons.favorite_border)),
            onPressed: () {
            setState(() => liked = !liked);
            },),
        )
      ],
    );
  }
}


