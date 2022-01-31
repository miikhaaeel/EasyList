import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>>? products;
  final Function? addProduct;
  final Function? deleteProduct;
  const HomeScreen(
      {Key? key, this.products, this.addProduct, this.deleteProduct})
      : super(key: key);

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
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('EasyList'),
      ),
      body: ProductManager(
        addProduct: addProduct,
        deleteProduct: deleteProduct,
        products: products,
      ),
    );
  }
}
