import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/constant.dart';

import 'package:shopingapp/model/product_model.dart';

class CartWithPurchaseButton extends StatelessWidget {
  const CartWithPurchaseButton({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDeffaultPadding),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 58,
            margin: EdgeInsets.only(right: kDeffaultPadding),
            decoration: BoxDecoration(
              border: Border.all(color: product.color),
              borderRadius: BorderRadius.circular(18),
            ),
            child: IconButton(
              color: product.color,
              icon: ImageIcon(
                AssetImage('assets/icons/shoping_cart.png'),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                onPressed: () {},
                color: product.color,
                child: Text(
                  'Buy now'.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
