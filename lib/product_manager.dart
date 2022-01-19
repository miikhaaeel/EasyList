import 'package:easy_list/product_control.dart';
import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String>? startingProduct;

  const ProductManager({Key? key, this.startingProduct}) : super(key: key);

  @override
  State<ProductManager> createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  final List<Map<String, String>> _products = [];
  @override
  void initState() {
    _products.add(widget.startingProduct!);
    super.initState();
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          child: ProductControl(addProduct: _addProduct),
        ),
        Expanded(
          child: Product(_products),
        ),
      ],
    );
  }
}
