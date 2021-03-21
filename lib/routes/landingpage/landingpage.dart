import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopingapp/providers/landingpage_screenchange.dart';

import 'bottomnavbar.dart';
import 'fetchpage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final ChangeScreens changeScreens = Provider.of<ChangeScreens>(context);

    ///the line above the provider ChangeScreens class holds the logic to
    ///switch between the navbar items in this landing page
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomnavBar(
        pageController: changeScreens.pagecontroler,
      ),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.grey[50],
            onPressed: () {
              changeScreens.setHomeFocus;
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: changeScreens.activehome == true
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).disabledColor,
                  )),
              child: Icon(
                Icons.home,
                color: changeScreens.activehome == true
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).disabledColor,
              ),
            ),
          ),
        ),
      ),
      body: PageView.builder(
          onPageChanged: (int) {
            print(int);
            switch (int) {
              case 0:
                changeScreens.setHomeFocus;
                break;
              case 1:
                changeScreens.setWalletFocus;
                break;
              case 2:
                changeScreens.setProfileFocus;
                break;
              default:
                print('end of page');
            }
          },
          itemCount: pagelists.length,
          scrollDirection: Axis.horizontal,
          controller: changeScreens.pagecontroler,
          itemBuilder: (context, index) => pagelists[index].page),
    );
  }

//  void setHomeFocus() {
//    if (activehome == false) {
//      setState(() {
//        activehome = true;
//        activeprofile = notactive;
//        activewallet = notactive;
//        _pageController.jumpToPage(0);
//      });
//    }
//  }
//
//  void setWalletFocus() {
//    if (activewallet == false) {
//      setState(() {
//        activewallet = true;
//        activehome = notactive;
//        activeprofile = notactive;
//        _pageController.jumpToPage(1);
//      });
//    }
//  }
//
//  void setProfileFocus() {
//    if (activeprofile == false) {
//      setState(() {
//        activeprofile = true;
//        activewallet = notactive;
//        activehome = notactive;
//        _pageController.jumpToPage(2);
//      });
//    }
//  }
}
