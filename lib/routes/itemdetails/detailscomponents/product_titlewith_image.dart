import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/constant.dart';
import 'package:shopingapp/model/product_model.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDeffaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Classic Bags',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDeffaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: kDeffaultPadding),
                child: RichText(
                  text: TextSpan(
                      text: 'price\n',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                      children: [
                        TextSpan(
                            text: 'NGN ',
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: Colors.white,
                                    )),
                        TextSpan(
                            text: '${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                      ]),
                ),
              ),
              SizedBox(width: kDeffaultPadding + 25),
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
