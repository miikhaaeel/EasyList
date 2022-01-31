import 'package:easy_list/product_control.dart';
import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>>? products;
  final Function? addProduct;
  final Function? deleteProduct;

  const ProductManager({Key? key, this.addProduct, this.deleteProduct, this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: ProductControl(addProduct: addProduct),
          ),
          Expanded(
            child: Product(products!, deleteProduct: deleteProduct!),
          ),
        ],
      ),
    );
  }
}
