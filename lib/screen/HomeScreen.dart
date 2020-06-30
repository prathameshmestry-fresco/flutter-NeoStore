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
        children: <Widget>[
          GridView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: 4,
            itemBuilder: (ctxt, i) => Container(
              child: GridTile(
                child: Image.network(
                  'https://simpleicon.com/wp-content/uploads/table-256x256.png',
                  fit: BoxFit.cover,
                ),
                footer: GridTileBar(
                  title: Text(
                    'Table',
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
