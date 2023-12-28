import 'package:codelikepro_project/product/model/product.dart';
import 'package:codelikepro_project/product/product_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late double  width;
late List<String> tabs;
  var tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    tabs = [
      "Smart watch",
      "Casio",
      "Tissot",
      "Seiko",
    ];
    tabController = TabController(length: tabs.length, vsync: this);
  }

  List<Product> products = [
    Product(
        id: 1,
        name: "Apple watch",
        color: Colors.red.shade100,
        image: "assets/watch1.png",
        descryption:
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without",
        productColors: [
          ProductColor(name: "red", color:Colors.red),
          ProductColor(name:"green", color:Colors.green),
          ProductColor(name:"blue", color:Colors.blue),
        ],
        series: "Series 7",
        price: "799"),
    Product(
        id: 2,
        name: "Galaxy watch",
        color: Colors.yellow.shade100,
        image: "assets/watch2.png",
        descryption:
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without",
        productColors: [
          ProductColor(name: "red", color:Colors.red),
          ProductColor(name:"green", color:Colors.green),
          ProductColor(name:"blue", color:Colors.blue),
        ],
        series: "Series 4",
        price: "1599"),
    Product(
        id: 3,
        name: "Mi watch",
        color: Colors.green.shade100,
        image: "assets/watch3.png",
        series: "Series 7",
        descryption:
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without",
        productColors: [
          ProductColor(name: "red", color:Colors.red),
          ProductColor(name:"green", color:Colors.green),
          ProductColor(name:"blue", color:Colors.blue),
        ],
        price: "600"),
    Product(
        id: 4,
        name: "Galaxy watch",
        color: Colors.blue.shade100,
        image: "assets/watch1.png",
        series: "Series 8",
        descryption:
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without",
        productColors: [
          ProductColor(name: "red", color:Colors.red),
          ProductColor(name:"green", color:Colors.green),
          ProductColor(name:"blue", color:Colors.blue),
        ],
        price: "199"),
    Product(
        id: 5,
        name: "Apple watch",
        color: Colors.red.shade100,
        image: "assets/watch1.png",
        series: "Series 7",
        descryption:
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without",
        productColors: [
          ProductColor(name: "red", color:Colors.red),
          ProductColor(name:"green", color:Colors.green),
          ProductColor(name:"blue", color:Colors.blue),
        ],
        price: "799"),
    Product(
        id: 6,
        name: "Galaxy watch",
        color: Colors.yellow.shade100,
        image: "assets/watch2.png",
        series: "Series 4",
        descryption:
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without",
        productColors: [
          ProductColor(name: "red", color:Colors.red),
          ProductColor(name:"green", color:Colors.green),
          ProductColor(name:"blue", color:Colors.blue),
        ],
        price: "1599"),
    Product(
        id: 7,
        name: "Mi watch",
        color: Colors.green.shade100,
        image: "assets/watch3.png",
        series: "Series 7",
        descryption:
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without",
        productColors: [
          ProductColor(name: "red", color:Colors.red),
          ProductColor(name:"green", color:Colors.green),
          ProductColor(name:"blue", color:Colors.blue),
        ],
        price: "600"),
    Product(
        id: 8,
        name: "Galaxy watch",
        color: Colors.blue.shade100,
        image: "assets/watch1.png",
        series: "Series 8",
        descryption:
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without",
        productColors: [
          ProductColor(name: "red", color:Colors.red),
          ProductColor(name:"green", color:Colors.green),
          ProductColor(name:"blue", color:Colors.blue),
        ],
        price: "199"),
  ];

  

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: width * 0.6,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Search Product",
                          prefixIcon: Image.asset("assets/search.png"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16))),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Find your suitable \n watch now.",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: tabs
                  .map((e) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {
                                setState(
                                    () => {selectedIndex = tabs.indexOf(e)});
                              },
                              style: TextButton.styleFrom(
                                  primary: selectedIndex == tabs.indexOf(e)
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey),
                              child: Text(e)),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            width: 30,
                            child: Divider(
                              height: 1,
                              color: selectedIndex == tabs.indexOf(e)
                                  ? Theme.of(context).primaryColor
                                  : Colors.transparent,
                            ),
                          )
                        ],
                      ))
                  .toList(),
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                padding: EdgeInsets.symmetric(horizontal: 8),
                children: products
                    .map((e) => ProductWidget(
                          product: e,
                        ))
                    .toList(),
                crossAxisCount: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
