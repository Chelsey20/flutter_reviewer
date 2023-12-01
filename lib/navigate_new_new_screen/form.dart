import 'package:flutter/material.dart';
import 'details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productController = TextEditingController();


  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          TextFormField(
            // onChanged: (val){
            //   _updateText(val);
            // },
            controller: _productController,
            decoration: const InputDecoration(
              labelText: 'Product Name',
              prefixIcon: Icon(Icons.verified_user_outlined),
              border: OutlineInputBorder()
            ),
          ),
          const SizedBox(height: 20.0),
          myBtn(context),
        ],
      )
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context){
                return Details(productName: _productController.text,);
          })
          );
        },
        child: Text(
          "Submit Form".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
  }
}
