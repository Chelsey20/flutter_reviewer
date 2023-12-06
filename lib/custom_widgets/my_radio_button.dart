import 'package:flutter/material.dart';

enum ProductTypeEnum {Downloadable, Deliverable}

class MyRadioButton extends StatelessWidget {
  MyRadioButton({
    super.key,
    required this.title,
    required this.value,
    required this.selectedProductType,
    required this.onChanged,
  });

  String title;
  ProductTypeEnum value;
  ProductTypeEnum? selectedProductType;
  Function(ProductTypeEnum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
        contentPadding: const EdgeInsets.all(0.0),
        value: value,
        groupValue: selectedProductType,
        dense: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        tileColor: Colors.deepPurple.shade50,
        title: Text(title),
        onChanged: onChanged,
      ),
    );
  }

  void setState(Null Function() param0) {}
}
