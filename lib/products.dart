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
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                product[index]['title']!,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '\$${product[index]['price']!.toString()}',
                ),
              ),
            ],
          ),
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
