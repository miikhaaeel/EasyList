import 'package:easy_list/screens/product_create.dart';
import 'package:easy_list/screens/product_list.dart';
import 'package:flutter/material.dart';

class ProductAdmin extends StatelessWidget {
  final Function? addProduct;
  final Function? deletePage;
  const ProductAdmin({Key? key, this.addProduct, this.deletePage}) : super(key: key);

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
                  Navigator.pushReplacementNamed(
                    context,
                  '/home'
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
        body: TabBarView(
          children: [ProductCreateScreen(addProduct:addProduct! ), const ProductListScreen()],
        ),
      ),
    );
  }
}
