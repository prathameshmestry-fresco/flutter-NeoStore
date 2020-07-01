import 'package:flutter/material.dart';

class ProductCategoryTile extends StatelessWidget {
  final int id;
  final String title;
  final String imageUrl;

  ProductCategoryTile(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Container(
        padding: const EdgeInsets.all(10),
        color: Colors.red,
        child: Text(
          title,
          textAlign: TextAlign.end,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
