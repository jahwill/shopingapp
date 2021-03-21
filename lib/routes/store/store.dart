import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopingapp/routes/store/components/body.dart';

import '../../constant.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        color: kTextColor,
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
            color: kTextColor,
            icon: ImageIcon(AssetImage('assets/icons/Search.png'))),
        IconButton(
            color: kTextColor,
            icon: ImageIcon(AssetImage('assets/icons/shoping_cart.png'))),
        SizedBox(
          width: kDeffaultPadding / 2,
        )
      ],
    );
  }
}
