import 'package:codelikepro_project/product/model/product.dart';
import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  ProductColor productColor;
  VoidCallback onTap;
  bool selected;

  ColorWidget(
      {Key? key,
      required this.selected,
      required this.productColor,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: OutlinedButton(
        child: Wrap(
          children: [
            Container(
              margin: EdgeInsets.only(right: 8),
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: productColor.color),
            ),
            Text(productColor.name!),
          ],
        ),
        style: OutlinedButton.styleFrom(
            primary: selected ? productColor.color : Colors.grey,
            onSurface: selected ? productColor.color : Colors.grey),
        onPressed: onTap,
      ),
    );
  }
}
