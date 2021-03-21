import 'package:flutter/material.dart';
import 'package:shopingapp/model/product_model.dart';

import '../../../constant.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: kDeffaultPadding, bottom: kDeffaultPadding),
      child: Text(
        product.description,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
