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
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new CarouselSlider(
                  height: 250.0,
                  autoPlay: true,
                  reverse: false,
                  scrollDirection: Axis.horizontal,
                  initialPage: 0,
                  items: imgList.map((imageLink) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.network(
                              imageLink,
                              fit: BoxFit.cover,
                            ));
                      },
                    );
                  }).toList()),
              new GridView.builder(
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, i) => new InkResponse(
                  enableFeedback: true,
                  child: ProductCategoryTile(categorList[i].id,
                      categorList[i].title, categorList[i].imageUrl),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductListingScreen()));
                  },
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
              ),
            ],
          ),
        ));
  }
}
