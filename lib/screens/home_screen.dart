import 'package:flutter/material.dart';

import '../widgets/products/products.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>>? products;

  const HomeScreen({Key? key,  this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: const Text('Choose'),
            ),
            ListTile(
              title: const Text('Manage Products'),
              leading: Icon(Icons.edit),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('EasyList'),
        actions: const [
          Icon(
            Icons.favorite_border,
            size: 45,
            color: Colors.red,
          ),
        ],
      ),
      body: Product(products!)
    );
  }
}
