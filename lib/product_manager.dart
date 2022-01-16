import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  const ProductManager({Key? key, required this.startingProduct})
      : super(key: key);

  @override
  State<ProductManager> createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];
  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // List<String> _product = ['Food Tester'];
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _products.add('Advanced Tester');
              });
            },
            child: const Text('Add Product'),
          ),
        ),
        Product(_products),
      ],
    );
  }
}