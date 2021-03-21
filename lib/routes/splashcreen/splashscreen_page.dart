//import 'dart:html';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shopingapp/exported_files.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StartTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF7d0552).withOpacity(0.4),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -36,
            left: -40,
            child: Container(
              height: 230,
              width: 230,
              decoration: BoxDecoration(
                  color: Color(0XFF7d0552).withAlpha(210),
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: 10,
            left: 5.0,
            child: Container(
              height: 140,
              width: 140,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
//              color: Colors.white,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  width: 200,
                  child: Image.asset(
                    'assets/images/fin_jobs.png',
//                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 106.0, vertical: 7),
                    child: LinearProgressIndicator(
                        backgroundColor: Colors.grey[300])),
              ],
            ),
          ),

          Positioned(
            bottom: 30,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
          ),
//
        ],
      ),
    );
  }

  StartTime() async {
    var duration = new Duration(seconds: 6);
    await new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }
}
