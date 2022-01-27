import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  const ProductScreen({Key? key, this.title, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imageUrl!),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Details'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text('Delete'),
              ),
            ),
          ],
        ));
  }
}