import 'package:flutter/material.dart';
import 'details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  final _productController2 = TextEditingController();

  bool? _checkBox, _listTileCheckBox = false;

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
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              // TextFormField(
              //   // onChanged: (val){
              //   //   _updateText(val);
              //   // },
              //   controller: _productController,
              //   decoration: const InputDecoration(
              //     labelText: 'Product Name',
              //     prefixIcon: Icon(Icons.verified_user_outlined),
              //     border: OutlineInputBorder()
              //   ),
              // ),
              // TextFormField(
              //   // onChanged: (val){
              //   //   _updateText(val);
              //   // },
              //   controller: _productController2,
              //   decoration: const InputDecoration(
              //     labelText: 'Product Name',
              //     prefixIcon: Icon(Icons.verified_user_outlined),
              //     border: OutlineInputBorder()
              //   ),
              // ),
              const Text(
                "Product Details",
                style: TextStyle(fontSize: 20.0),
              ),
              const Text("Add product details in form below"),
              const SizedBox(height: 30.0),
              MyTextField(
                fieldName: "Product Name",
                myController: _productController,
                myIcon: Icons.propane_outlined,
                prefixIconColor: Colors.deepPurple.shade300,
              ),
              const SizedBox(height: 10.0),
              MyTextField(
                fieldName: "Product Description",
                myController: _productDesController,
                prefixIconColor: Colors.deepPurple.shade300,
              ),
              const SizedBox(height: 10.0),

              Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.deepPurple,
                  tristate: true,
                  value: _checkBox,
                  onChanged: (val) {
                    setState(() {
                      _checkBox = val;
                    });
                  }),

              CheckboxListTile(
                  value: _listTileCheckBox,
                  title: const Text("Top Product"),
                  onChanged: (val) {
                    setState(() {
                      _listTileCheckBox = val;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 20.0),
              myBtn(context),
            ],
          ),
        ));
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Details(
            productName: _productController.text,
            productName2: _productController2.text,
          );
        }));
      },
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(
            myIcon,
            color: prefixIconColor,
          ),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple.shade300),
          ),
          labelStyle: const TextStyle(color: Colors.deepPurple)),
    );
  }
}
