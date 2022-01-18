import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function? addProduct;
  const ProductControl({Key? key, this.addProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        addProduct!('Sweets');
      },
      child: const Text('Add Product'),
    );
  }
}
