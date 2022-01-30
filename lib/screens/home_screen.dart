import 'package:easy_list/screens/product_admin.dart';
import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
      body: const ProductManager(
          // startingProduct: {'title': 'Chocolatee', 'imageUrl': 'assets/food.jpg'},
          ),
    );
  }
}
