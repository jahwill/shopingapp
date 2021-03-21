import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/constant.dart';

import 'itemcomponents_exports.dart';
import 'package:shopingapp/model/product_model.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowGlow();
        return;
      },
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
//                height: 200,
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  padding: EdgeInsets.only(
                      top: size.height * 0.15,
                      left: kDeffaultPadding,
                      right: kDeffaultPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDeffaultPadding / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDeffaultPadding / 2,
                      ),
                      CounterwithFavButton(),
                      SizedBox(
                        height: kDeffaultPadding / 3,
                      ),
                      CartWithPurchaseButton(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      )),
    );
  }
}
