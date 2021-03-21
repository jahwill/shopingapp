import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/components/carousel.dart';
import 'package:shopingapp/exported_files.dart';

import 'components/balancecard.dart';
import 'components/serviceslist.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//  GlobalKey globalkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
            child: NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowGlow();

        return;
      },
      child: Container(
        height: size.height,
        width: size.width,
        color: Colors.white70,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CustomAppBar(),
              BalanceCard(size: size),
              BodyContents(),
            ],
          ),
        ),
      ),
    )));
  }
}

class BodyContents extends StatelessWidget {
  const BodyContents({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 5, left: kDeffaultPadding / 4, right: kDeffaultPadding / 4),
      child: Column(
        children: [
          Container(
            height: 180,

            ///todo:2 put an image slider here (carousel slider)

            child: CarouselSlider1(),
          ),
          SizedBox(
            height: kDeffaultPadding - 2,
          ),
          Services(),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: kDeffaultPadding / 4),
                child: Text(
                  'Updated products',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              SizedBox(
                height: 155,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
//                                  width: 100,
                          height: 100,
                          padding: EdgeInsets.all(6),
                          child: Image.asset(products[index].image),
//                                  color: Colors.grey[50],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 5),
                          child: Text(
                            '${products[index].title}',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: RichText(
                            text: TextSpan(
                                text: 'NGN ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                children: [
                                  TextSpan(
                                      text: '${products[index].price}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600))
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.grey[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      ///todo: 1 logic that brings a search floating
                      ///todo: container  for customer's contents search
                    },
                    color: kTextColor,
                    icon: ImageIcon(AssetImage('assets/icons/Search.png'))),
                IconButton(
                    onPressed: () {
                      ///todo: 1 logic that brings a search floating
                      ///todo: container  for customer's contents search
                    },
                    color: kTextColor,
                    icon:
                        ImageIcon(AssetImage('assets/icons/shoping_cart.png'))),
                SizedBox(
                  width: kDeffaultPadding / 2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
