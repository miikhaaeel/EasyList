import 'package:flutter/material.dart';

class ProductCreateScreen extends StatelessWidget {
  const ProductCreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const Center(
                    child: Text('Alright'),
                  );
                });
          },
          child: Text('SAVE'),
        ),
      ),
    );
  }
}
