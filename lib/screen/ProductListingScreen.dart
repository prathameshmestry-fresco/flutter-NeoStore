import 'package:flutter/material.dart';

void main() {
  runApp(ProductListingPage());
}

class ProductListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new ProductListingScreen());
  }
}

class ProductListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
