import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/constant.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int _itemscount = 0;
  @override
  Widget build(BuildContext context) {
    ///this component comes with a fav or favorite button which you can still
    /// remove if u don't need it
    return Row(
      children: [
        buildCounterButton(
            icon: Icons.remove,
            press: () {
              if (_itemscount > 1) {
                setState(() {
                  _itemscount--;
                });
              }
            }),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: kDeffaultPadding / 1.5),
          child: Text(
            _itemscount.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        buildCounterButton(
            icon: Icons.add,
            press: () {
              if (_itemscount < 10) {
                setState(() {
                  _itemscount++;
                });
              }
            }),
      ],
    );
  }

  SizedBox buildCounterButton({IconData icon, Function press}) {
    return SizedBox(
      height: 32,
      width: 36,
      child: OutlineButton(
        onPressed: press,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Icon(icon),
      ),
    );
  }
}
