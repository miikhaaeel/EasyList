import 'package:easy_list/screens/product_create.dart';
import 'package:easy_list/screens/product_list.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class ProductAdmin extends StatelessWidget {
  const ProductAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                        builder: (BuildContext context) => const HomeScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: const Text('Manage Product'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Create',
                  icon: Icon(
                    Icons.create,
                  ),
                ),
                Tab(
                  text: 'My Product',
                  icon: Icon(Icons.list),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            ProductCreateScreen(),
            ProductListScreen()
          ])),
    );
  }
}
