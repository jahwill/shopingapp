import 'package:flutter/cupertino.dart';

class ChangeScreens extends ChangeNotifier {
  PageController _pageController = PageController(initialPage: 0);

  bool activewallet = false;
  bool activehome = true;
  bool activeprofile = false;
  bool notactive = false;

//  set pagecontroler(int index) {
//    _pageController = PageController(initialPage: 0);
//    notifyListeners();
//  }

  get pagecontroler => _pageController;

  get setHomeFocus {
    if (activehome == false) {
      activehome = true;
      activeprofile = notactive;
      activewallet = notactive;
      _pageController.jumpToPage(0);
      notifyListeners();
    }
  }

  get setWalletFocus {
    if (activewallet == false) {
      activewallet = true;
      activehome = notactive;
      activeprofile = notactive;
      _pageController.jumpToPage(1);
      notifyListeners();
    }
  }

//  get ProfileFocus => setProfileFocus;
  get setProfileFocus {
    if (activeprofile == false) {
      activeprofile = true;
      activewallet = notactive;
      activehome = notactive;
      _pageController.jumpToPage(2);
      notifyListeners();
    }
  }
}
