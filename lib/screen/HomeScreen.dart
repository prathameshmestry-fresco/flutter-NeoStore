import 'package:carousel_slider/carousel_slider.dart';
import '../model/ProductCategory.dart';
import 'package:flutter/material.dart';
import '../widgets/ProductCategoryTile.dart';
import '../screen/ProductListingScreen.dart';

void main() {
  runApp(HomeScreenPage());
}

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new HomeScreen());
  }
}

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  int _currentIndex = 0;

  List<String> imgList = [
    'https://www.itl.cat/pngfile/big/202-2025052_wallpaper-design-for-living-room-home-decoration-ideas.jpg',
    'https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/1280x1280/products/29676/277689/Customized-simple-3D-wallpaper-geometric-diamond-murals-for-living-room-bedroom-sofa-background-wall-home-decoration__86750.1567751324.jpg?c=2?imbypass=on',
    'https://ae01.alicdn.com/kf/HTB1zsShXo_rK1Rjy0Fcq6zEvVXah.jpg',
    'https://sc02.alicdn.com/kf/HTB1MuxBXdjvK1RjSspiq6AEqXXa7/234456910/HTB1MuxBXdjvK1RjSspiq6AEqXXa7.jpg'
  ];

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
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.black87),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        child: Image.asset(
                          'assets/profile-pic.png',
                          width: 70,
                          height: 70,
                        ),
                      ),
                      Text(
                        'Prathamesh Mestry',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text('abcdef@gmail.com',
                          style: TextStyle(fontSize: 15, color: Colors.white))
                    ],
                  )),
              Container(
                decoration: BoxDecoration(color: Colors.black87),
                padding: EdgeInsets.zero,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'My Cart',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/cart.png',
                        width: 25,
                        height: 25,
                      ),
                      title: Text(
                        'Tables',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      trailing: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/cart.png',
                        width: 25,
                        height: 25,
                      ),
                      title: Text(
                        'Sofas',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/cart.png',
                        width: 25,
                        height: 25,
                      ),
                      title: Text(
                        'Chairs',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/cart.png',
                        width: 25,
                        height: 25,
                      ),
                      title: Text(
                        'Cupboards',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/cart.png',
                        width: 25,
                        height: 25,
                      ),
                      title: Text(
                        'My Accounts',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/cart.png',
                        width: 25,
                        height: 25,
                      ),
                      title: Text(
                        'Store Locator',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/cart.png',
                        width: 25,
                        height: 25,
                      ),
                      title: Text(
                        'My Orders',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/cart.png',
                        width: 25,
                        height: 25,
                      ),
                      title: Text(
                        'Logout',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                child: new CarouselSlider(
                    height: 250.0,
                    autoPlay: true,
                    reverse: false,
                    scrollDirection: Axis.horizontal,
                    initialPage: 0,
                    items: imgList.map((imageLink) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: 1200,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Image.network(
                                imageLink,
                                fit: BoxFit.fitWidth,
                              ));
                        },
                      );
                    }).toList()),
              ),
            ],
          ),
        ));
  }
}
