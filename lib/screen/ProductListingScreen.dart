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
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image.network(
                    'https://www.ulcdn.net/images/products/157781/product/Wesley_Dalla_6_Seater_Dining_Table_Set_Grey_LP.jpg?1508904699',
                    width: 70,
                    height: 70,
                  ),
                  new Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'Stylish Modern Dining Tables',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        new Text(
                          'Aron Table Center',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              'Rs. 24000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 15),
                            ),
                            new Image.network(
                              'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/star-512.png',
                              height: 18,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
