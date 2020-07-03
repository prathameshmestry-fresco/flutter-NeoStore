import '../widgets/ProductListView.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ProductListView(
                'Stylish Modern Dining Tables', 'Aron Table Center', 1000);
          }),
    );
  }
}
