import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:shopingapp/model/product_model.dart';
import 'package:shopingapp/routes/store/components/body_exports.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ProductCard({
    this.product,
    this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 163,
//          width: 140,
            ///this height and weight was used for demo to set the item card
            padding: EdgeInsets.all(kDeffaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: product.color),
            child: Image.asset(product.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDeffaultPadding / 6),
            child: Text(
              product.title,
              style: TextStyle(color: kTextColor),
            ),
          ),
          Text(
            'NGN ${product.price}',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
