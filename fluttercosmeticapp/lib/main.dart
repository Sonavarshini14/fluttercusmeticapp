import 'package:flutter/material.dart';
import 'data/sample_data.dart';
import 'widgets/product_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cosmetics Shop',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          
          title: Text('Cosmetics Shop'),
        ),
        body: ListView.builder(
          itemCount: sampleProducts.length,
          itemBuilder: (context, index) {
            return ProductTile(product: sampleProducts[index]);
          },
        ),
      ),
    );
  }
}
