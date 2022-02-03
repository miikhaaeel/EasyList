import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  final Function? addProduct;

  const ProductCreateScreen({Key? key, this.addProduct}) : super(key: key);

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  String textFieldValue = '';
  String descriptionValue = '';
  double? priceValue;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextField(
          decoration: InputDecoration(),
          onChanged: (value) {
            setState(() {
              textFieldValue = value;
            });
          },
        ),
        TextField(
          onChanged: (value) {
            setState(() {
              descriptionValue = value;
            });
          },
          maxLines: 5,
        ),
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (value) {
            priceValue = double.parse(value);
          },
          maxLines: 5,
        ),
        ElevatedButton(
          onPressed: () {
            final Map<String, dynamic> product = {
              'title': textFieldValue,
              'description': descriptionValue,
              'price': priceValue,
            };
            widget.addProduct!(product);
           // print(product);
          },
          child: Text('Save'),
        )
      ],
    );
  }
}
