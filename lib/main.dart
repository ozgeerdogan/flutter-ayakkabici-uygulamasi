import 'package:flutter/material.dart';
import 'body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_outlined),
                color: Colors.grey[600],
              ),
              title: TextFormField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                    labelText: "Erkek Ayakkabı | 100.000+ ürün"),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search_outlined,
                      color: Colors.grey[600],
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.grey[600],
                    ))
              ],
            ),
            body: bodying()));
  }
}
