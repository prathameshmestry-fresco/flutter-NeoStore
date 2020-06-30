import 'package:flutter/material.dart';

void main() {
  runApp(MyAppHomePage());
}

class MyAppHomePage extends StatelessWidget {
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
    );
  }
}
