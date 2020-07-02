import '../widgets/ProductCategoryTile.dart';

import '../model/ProductCategory.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreenPage());
}

class HomeScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  final List<ProductCategory> categorList = [
    ProductCategory(
        id: 1,
        title: 'Tables',
        imageUrl:
            'https://simpleicon.com/wp-content/uploads/table-256x256.png'),
    ProductCategory(
        id: 2,
        title: 'Sofas',
        imageUrl:
            'https://simpleicon.com/wp-content/uploads/table-256x256.png'),
    ProductCategory(
        id: 3,
        title: 'Chairs',
        imageUrl:
            'https://simpleicon.com/wp-content/uploads/table-256x256.png'),
    ProductCategory(
        id: 4,
        title: 'Cupboards',
        imageUrl: 'https://simpleicon.com/wp-content/uploads/table-256x256.png')
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'NeoSTORE',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: categorList.length,
          itemBuilder: (context, i) => new InkResponse(
            enableFeedback: true,
            child: ProductCategoryTile(categorList[i].id, categorList[i].title,
                categorList[i].imageUrl),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
        ));
  }
}
