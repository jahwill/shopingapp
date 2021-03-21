import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/exported_files.dart';
import 'details_exports.dart';

class DetailsPage extends StatelessWidget {
  final Product product;
  DetailsPage({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ///this is the detailed page of each product
    return Scaffold(
      backgroundColor: product.color,
      appBar: Appbar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar Appbar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        color: Colors.white,
        iconSize: 30,
        icon: ImageIcon(AssetImage(
          'assets/icons/back_arrow.png',
        )),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          color: Colors.white,
          icon: ImageIcon(AssetImage('assets/icons/Search.png')),
          onPressed: () {},
        ),
        IconButton(
          color: Colors.white,
          icon: ImageIcon(AssetImage('assets/icons/shoping_cart.png')),
          onPressed: () {},
        ),
        SizedBox(
          width: kDeffaultPadding / 2,
        )
      ],
    );
  }
}
