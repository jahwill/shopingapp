import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopingapp/constant.dart';
import 'package:shopingapp/routes/homepage/components/balancecard.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
//
              buildAppBar(size, context),

              Container(
                color: Colors.white,
                height: size.height - 240.0,
                width: size.width,
                child: RefreshIndicator(
                  onRefresh: _refresh,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemCount: notifications.length,
                    itemBuilder: (context, index) => Container(
                      width: 20,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[100]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 1),
                        child: Text(
                          '${notifications[index]}',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildAppBar(Size size, BuildContext context) {
    return Container(
      height: 150,
      width: size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5),
                child: Text(
                  'Wallet Statement',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                    onPressed: () {
                      ///todo: 1 logic that refreshes the page when pressed
                      setState(() {
                        print('refresh page');
                      });
                    },
                    color: Colors.white,
                    icon: Icon(Icons.refresh)),
              ),
            ],
          ),

//
          SizedBox(
            height: kDeffaultPadding + 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDeffaultPadding / 2),
            child: RichText(
              text: TextSpan(
                  text: 'NGN ',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.white),
                  children: [
                    TextSpan(
                      text: '50,000,000',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.white),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _refresh() async {
    ///these are the two ways to handle a future process we can either use
    ///the Completer  or the await Future key word.
//    Completer<Null> completer = new Completer<Null>();
//    Future.delayed(new Duration(seconds: 3)).then(
//      (value) => completer.complete(),
//    );
//    return completer.future;
    await Future.delayed(Duration(seconds: 4));
    setState(() {
      print('refreshed');
    });
    return null;
  }
}

List<String> notifications = [
  'NGN 200, 000 ',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 200, 000 transferred to Ubar fo the purchase of 100 pieces of fancy bags',
  'NGN 50, 000 transferred to Okor fo the purchase of 100 pieces of fancy ',
  'NGN 10, 000 transferred to UBA inc fo the purchase of 100 pieces of fancy '
];
