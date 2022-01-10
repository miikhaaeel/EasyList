import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final List<String> product;
  const Product(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: product
          .map(
            (e) => Card(
              child: Column(
                children: [
                  Image.asset('assets/food.jpg'),
                  Text(e),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
