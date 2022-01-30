import 'package:flutter/material.dart';

import 'product_screen.dart';

class ProductAdmin extends StatelessWidget {
  const ProductAdmin({Key? key}) : super(key: key);

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
              title: const Text('All Products'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const ProductScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Manage Product'),
      ),
      body: const Center(
        child: Text('Manage your products'),
      ),
    );
  }
}
