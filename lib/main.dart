import 'package:easy_list/screens/auth_screen.dart';
import 'package:easy_list/screens/home_screen.dart';
import 'package:easy_list/screens/product_admin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //  home: AuthScreen(),
      routes: {
        '/':(BuildContext context)=>const HomeScreen(),
        '/auth':(BuildContext context)=>const AuthScreen(),
        '/admin': (BuildContext context) => const ProductAdmin(),

      },
    );
  }
}
