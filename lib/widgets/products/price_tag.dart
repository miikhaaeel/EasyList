import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  final String? price;
  const PriceTag({Key? key, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '\$$price',
      ),
    );
  }
}
