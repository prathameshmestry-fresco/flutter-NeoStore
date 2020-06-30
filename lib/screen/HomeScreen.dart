import 'package:NeoSTORE/model/ProductCategory.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new GridView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: categorList.length,
            itemBuilder: (ctxt, i) => Container(
              child: GridTile(
                child: Image.network(
                  categorList[i].imageUrl,
                  fit: BoxFit.cover,
                ),
                footer: GridTileBar(
                  title: Text(
                    categorList[i].title,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
          )
        ],
      ),
    );
  }
}
