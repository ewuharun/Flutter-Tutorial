import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Pages/ProductPage.dart';

FloatingActionButton floatingButton(BuildContext context) {
  return FloatingActionButton.extended(
    icon: Icon(Icons.shopping_cart),
    label: const Text('Start Shopping'),
    backgroundColor: Colors.blue,
    onPressed: () {
      print("Go for Shopping");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductPage('All Product'),
        ),
      );
    },
  );
}