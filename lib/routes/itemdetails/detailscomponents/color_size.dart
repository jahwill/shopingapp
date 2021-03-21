import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/constant.dart';
import 'package:shopingapp/model/product_model.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF0934BA),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                text: 'Size\n',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                    text: '${product.size} cm',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ]),
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final bool isSelected;
  final Color color;
  const ColorDot({
    Key key,
    this.isSelected = false,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: kDeffaultPadding / 4, right: kDeffaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? color : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
