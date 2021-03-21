import 'package:flutter/material.dart';
import 'package:shopingapp/constant.dart';
import 'package:shopingapp/exported_files.dart';

class Services extends StatelessWidget {
  const Services({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            serviceHolder(
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => StoreScreen()));
              },
              color: Theme.of(context).primaryColor,
              context: context,
              title: 'Store',
              url: 'assets/icons/shoping_cart.png',
            ),
            serviceHolder(
                press: () {
                  print('hello');
                },
                context: context,
                title: 'Fund Wallet',
                url: 'assets/icons/deposit.png',
                color: Color(0xFFE59638))
          ],
        ),
        SizedBox(
          height: kDeffaultPadding,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            serviceHolder(
              press: () {
                print('store');
              },
              color: Color(0xFF022C64),
              context: context,
              title: 'Withdraw',
              url: 'assets/icons/withdraw.png',
            ),
            serviceHolder(
              context: context,
              title: 'Buy Airtime',
              url: 'assets/icons/mobile.png',
              press: () {
                print('store');
              },
              color: Color(0xFFE4112A),
            )
          ],
        )
      ],
    );
  }

  serviceHolder(
      {BuildContext context, String title, url, Color color, Function press}) {
    return InkWell(
      onTap: press,
      child: Column(
        children: [
          Container(
            height: 45,
            width: 45,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(0, 3),
                      spreadRadius: 3,
                      blurRadius: 10)
                ]),
            child: Image.asset(
              url,
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
