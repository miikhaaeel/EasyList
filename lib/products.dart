import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final List<Map<String, dynamic>> product;

  const Product(
    this.product, {
    Key? key,
  }) : super(key: key);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: [
          Image.asset(product[index]['imageUrl']!),
          Text(product[index]['title']!),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed<bool>(
                    context,
                    '/product/' + index.toString(),
                  );
                },
                child: const Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )
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
