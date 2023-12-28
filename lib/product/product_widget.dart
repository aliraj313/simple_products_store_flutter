import 'package:codelikepro_project/product/model/product.dart';
import 'package:codelikepro_project/product/product_detail.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  Product product;

  ProductWidget({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(
                product: product,
              ),
            ));
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                  color: product.color,
                  child: Image.asset(
                    product.image,
                    width: 100,
                  )),
            ),
            Text(
              product.name,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: Text(
                product.series,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Spacer(),
            Text(
              "\$${product.price}",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
