import 'package:flutter/material.dart';
import 'package:shopingapp/exported_files.dart';

class PageList {
  final String pagetitle;
  Widget page;

  PageList({this.pagetitle, this.page});
}

List<PageList> pagelists = [
  PageList(
    pagetitle: 'Home',
    page: HomeScreen(),
  ),
  PageList(
    pagetitle: 'User',
    page: WalletPage(),
  ),
  PageList(
    pagetitle: 'Wallet',
    page: StoreScreen(),
  ),
];
