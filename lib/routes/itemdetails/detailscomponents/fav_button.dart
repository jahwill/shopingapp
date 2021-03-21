import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavButton extends StatefulWidget {
  @override
  _FavButtonState createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool _favSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _favSelected = _favSelected == false ? true : false;
        });
      },
      child: Container(
        height: 32,
        width: 32,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _favSelected ? Color(0xFFFF6464) : Colors.grey),
        child: ImageIcon(
          AssetImage('assets/icons/heart.png'),
          color: Colors.grey[100],
        ),
      ),
    );
  }
}
