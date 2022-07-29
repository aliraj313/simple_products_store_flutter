import 'package:codelikepro_project/product/color_widget.dart';
import 'package:codelikepro_project/product/model/product.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  Product product;

  ProductDetailPage({Key key, this.product}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  double width;

  ProductColor selectedProductColor = ProductColor(name: "");

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset("assets/arrow_back.png")),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Image.asset("assets/heart.png"))
            ],
          ),
          SliverToBoxAdapter(
            child: Image.asset(
              widget.product.image,
              width: 300,
              height: 300,
              scale: 0.7,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${widget.product.name} ${widget.product.series}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                      Text(
                        "\$${widget.product.price}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Width solo loop",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Colors",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: widget.product.productColors
                        .map((e) => ColorWidget(
                              productColor: e,
                              selected: selectedProductColor.name.hashCode ==
                                  e.name.hashCode,
                              onTap: () {
                                setState(() {
                                  selectedProductColor = e;
                                });
                              },
                            ))
                        .toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Details",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                              Container(
                                width: 30,
                                height: 1,
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        ),
                        Text(
                          "Review",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.product.descryption,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 32),
                   width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 24),
                            primary: Theme.of(context).primaryColor),
                        child: Text("Add to cart")),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
