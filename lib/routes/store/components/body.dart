import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/model/product_model.dart';
import 'package:shopingapp/routes/itemdetails/item_detail.dart';
import 'body_exports.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDeffaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDeffaultPadding),
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: kDeffaultPadding,
                  crossAxisSpacing: kDeffaultPadding),
              itemBuilder: (context, index) => ProductCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailsPage(
                              product: products[index],
                            ))),
              ),
            ),
          ),
        )
      ],
    );
  }
}
