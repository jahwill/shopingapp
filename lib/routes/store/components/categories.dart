import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

///we need statefull widgets for our categories
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> _catergories = [
    "Hand Bags",
    "Jewellery",
    "Foot Wears",
    "Dresses"
  ];
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDeffaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: _catergories.length,
          itemBuilder: (context, index) => buildCategories(index),
        ),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDeffaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _catergories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: _selected == index ? kTextColor : kLightColor),
            ),
            Container(
              margin: EdgeInsets.only(top: kDeffaultPadding / 4),

              ///top padding
              height: 2,
              width: 30,
              color: _selected == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
