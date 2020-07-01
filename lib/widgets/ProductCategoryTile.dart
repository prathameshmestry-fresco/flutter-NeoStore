import 'package:flutter/material.dart';

class ProductCategoryTile extends StatelessWidget {
  final int id;
  final String title;
  final String imageUrl;

  ProductCategoryTile(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
