import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopingapp/constant.dart';
import 'package:shopingapp/providers/landingpage_screenchange.dart';
import 'package:shopingapp/routes/landingpage/landingpage.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({
    Key key,
    @required this.size,
    this.press,
  }) : super(key: key);

  final Size size;
  final Function press;

  @override
  _BalanceCardState createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  GlobalKey _cardkey = GlobalKey();

  double hight = 0;
  double width = 0;
  double scale = 0.0001;
  @override
  Widget build(BuildContext context) {
    ChangeScreens changeScreens = Provider.of<ChangeScreens>(context);
    var size = widget.size;
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: () {
            changeScreens.setWalletFocus;
          },
          child: Container(
            key: _cardkey,
            constraints: BoxConstraints(
              maxWidth: 500,
            ),
            margin: EdgeInsets.symmetric(
                horizontal: widget.size.width * 0.05, vertical: 10),
            height: 100,
            width: widget.size.width,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDeffaultPadding / 3,
                      vertical: kDeffaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Text(
                          'Main Balance',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
//
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDeffaultPadding / 2),
                  child: RichText(
                    text: TextSpan(
                        text: 'NGN ',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: Colors.white),
                        children: [
                          TextSpan(
                            text: '50,000,000',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(color: Colors.white),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),

        ///in this instance I am not using the stack functionality so i am commenting
        /// is out
//        accountSummarysheet(size, context)
      ],
    );
  }

//  AnimatedContainer accountSummarysheet(Size size, BuildContext context) {
//    return AnimatedContainer(
//      ///this is the quick accessed account summary sheet
//      height: hight,
//      width: width,
//      transform: Matrix4.translationValues(0, 0, 0)..scale(scale),
//      duration: Duration(
//        milliseconds: 360,
//      ),
//      curve: Curves.fastOutSlowIn,
//      decoration: BoxDecoration(
//        color: Colors.red,
//        shape: hight <= size.height * 0.5
//
//            ///determines if the
//            /// account sumarry container is half the screen size in height
//            /// then turns into
//            ///circle    else remains rectangle
//            ? BoxShape.circle
//            : BoxShape.rectangle,
//      ),
//      child: Column(
//        children: [
//          Padding(
//            padding: const EdgeInsets.symmetric(
//              horizontal: kDeffaultPadding / 5,
//            ),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: [
//                IconButton(
//                  onPressed: () {
//                    setState(() {
//                      hight = 0;
//                      width = 0;
//                      scale = 0.1;
//                    });
//                  },
//                  color: Theme.of(context).primaryColor,
//                  iconSize: 30,
//                  icon: Icon(Icons.keyboard_backspace),
//                ),
//                SizedBox()
//              ],
//            ),
//          )
//        ],
//      ),
//    );
//  }
}
