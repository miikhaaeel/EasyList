import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<ProductManager> createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  @override
  Widget build(BuildContext context) {
    List<String> _product = ['Food Tester'];
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _product.add('Advanced Tester');
              });
            },
            child: const Text('Add Product'),
          ),
        ),
        Product(_product),
      ],
    );
  }
}
