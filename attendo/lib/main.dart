import 'package:flutter/material.dart';
import './startPage.dart';
//import './myHomePage.dart';
import './productLayout.dart';
import './gestureDemo.dart';
import './stateManagement.dart';
import './scopedModelProduct.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue[600]),
        home: MyHomePage(title: 'Home page',)
        );
  }
}

class MyHomePage extends StatelessWidget {

  MyHomePage({Key key, this.title}): super(key: key);
  final String title;

  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductBox(
              item: items[index],
            );
          },
        ));
  }
}