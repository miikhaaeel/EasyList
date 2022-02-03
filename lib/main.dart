import 'package:easy_list/screens/auth_screen.dart';
import 'package:easy_list/screens/home_screen.dart';
import 'package:easy_list/screens/product_admin.dart';
import 'package:flutter/material.dart';

import 'screens/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> _product = [];

  void _addProduct(Map<String, dynamic> product) {
    setState(() {
      _product.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _product.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  home: AuthScreen(),
      routes: {
        '/': (BuildContext context) => HomeScreen(
              products: _product,
            ),
        '/auth': (BuildContext context) => const AuthScreen(),
        '/admin': (BuildContext context) => ProductAdmin(
              addProduct: _addProduct,
              deletePage: _deleteProduct,
            ),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElement = settings.name!.split('/');
        if (pathElement[0] != '') {
          return null;
        }
        if (pathElement[1] == 'product') {
          final index = int.parse(pathElement[2]);
          return MaterialPageRoute<bool>(
            builder: (context) => ProductScreen(
              title: _product[index]['title'],
              imageUrl: _product[index]['imageUrl'],
            ),
          );
        }
        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => HomeScreen(
            products: _product,
          ),
        );
      },
    );
  }
}
