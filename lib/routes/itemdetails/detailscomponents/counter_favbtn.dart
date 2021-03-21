import 'package:flutter/cupertino.dart';

import '../../../constant.dart';
import 'cart_items_count.dart';
import 'fav_button.dart';

class CounterwithFavButton extends StatelessWidget {
  const CounterwithFavButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [CartCounter(), FavButton()],
    );
  }
}
