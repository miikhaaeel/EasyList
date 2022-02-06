import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  final Function? addProduct;

  const ProductCreateScreen({Key? key, this.addProduct}) : super(key: key);

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  String _textFieldValue = '';
  String _descriptionValue = '';
  double? _priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Product Title'),
            onChanged: (value) {
              setState(() {
                _textFieldValue = value;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product Description'),
            onChanged: (value) {
              setState(() {
                _descriptionValue = value;
              });
            },
            maxLines: 5,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product Price'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              _priceValue = double.parse(value);
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.purple,
              primary: Colors.white,
              elevation: 8,
            ),
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': _textFieldValue,
                'description': _descriptionValue,
                'price': _priceValue,
                'imageUrl': 'assets/food.jpg'
              };
              widget.addProduct!(product);
              Navigator.pushReplacementNamed(context, '/home');
              // print(product);
            },
            child: Text('Save'),
          )
        ],
      ),
    );
  }
}
