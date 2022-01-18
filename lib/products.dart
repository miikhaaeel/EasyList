import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final List<String> product;
  const Product(this.product, {Key? key}) : super(key: key);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/food.jpg'),
          Text(product[index]),
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard;
    if (product.isNotEmpty) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: product.length,
      );
    } else {
      productCard = const Center(
        child: Text('No Products found. Please add one'),
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
