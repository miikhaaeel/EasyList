import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final String? title;
  final String? imageUrl;

  const ProductScreen({Key? key, this.title, this.imageUrl}) : super(key: key);

  _showWarningDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('This action cannot be undone'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('DISCARD'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context, true);
              },
              child: const Text('CONTINUE'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
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
                onPressed: () => _showWarningDialog(context),
                child: const Text('Delete'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
