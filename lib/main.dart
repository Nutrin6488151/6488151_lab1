import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Americano",
                description: "Black coffee with water",
                price: 160,
                image: "americano.jpeg"),
            ProductBox(
                name: "Green tea",
                description: "green tea from Osaka",
                price: 120,
                image: "green.jpg"),
            ProductBox(
                name: "cappuccino",
                description: "hot cappuccino",
                price: 200,
                image: "cappu.jpg"),
            ProductBoxURL(
                name: "chocolate",
                description: "chocolate latte",
                price: 150,
                image: "https://www.torani.com/sites/default/files/recipes/illustration/84_mochas_11849.jpg"),
            ProductBoxURL(
                name: "Ice-Mocha",
                description: "rich favor of chocolate and coffee",
                price: 300,
                image: "https://www.everyday-delicious.com/wp-content/uploads/2022/07/iced-mocha-everyday-delicious-1.jpg"),
            ProductBoxURL(
                name: "Strawberry latte",
                description: "strawberry with latte",
                price: 20,
                image:
                    "https://images.services.kitchenstories.io/slYL9-dcaNPfBSknbbg9o8t7Pms=/3840x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2655-new-LAVAZZA-recipe.jpg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

class ProductBoxURL extends StatelessWidget {
  ProductBoxURL(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}
