import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopingapp/components/iconbtn.dart';
import 'package:shopingapp/constant.dart';
import 'package:shopingapp/providers/providers_exports.dart';

class CustomBottomnavBar extends StatefulWidget {
  final bool activewallet, activeprofile;
  final dynamic pageController;
  const CustomBottomnavBar({
    this.activeprofile,
    this.activewallet,
    this.pageController,
    Key key,
  }) : super(key: key);

  @override
  _CustomBottomnavBarState createState() => _CustomBottomnavBarState();
}

class _CustomBottomnavBarState extends State<CustomBottomnavBar> {
  @override
  Widget build(BuildContext context) {
    final ChangeScreens changeScreens = Provider.of<ChangeScreens>(context);
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 65,
//        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDeffaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Custombtn(
                onPressed: () {
                  changeScreens.setWalletFocus;
                },
                iconColor: changeScreens.activewallet == true
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).disabledColor,
                icon: ImageIcon(
                  AssetImage('assets/icons/purse.png'),
                ),
                title: 'Wallet',
                splashRadius: 50,
              ),
              Custombtn(
                onPressed: () {
                  changeScreens.setProfileFocus;
                },
                iconColor: changeScreens.activeprofile == true
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).disabledColor,
                icon: ImageIcon(
                  AssetImage('assets/icons/user.png'),
                ),
                title: 'Profile',
                splashRadius: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
