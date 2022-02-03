import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>>? products;

  const ProductManager({Key? key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Product(products!),
          ),
        ],
      ),
    );
  }
}
