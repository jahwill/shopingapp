import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopingapp/constant.dart';
import 'package:shopingapp/exported_files.dart';
import 'package:shopingapp/providers/landingpage_screenchange.dart';
import 'package:shopingapp/routes/auth/login.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChangeScreens>.value(
      value: ChangeScreens(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: kTextColor,
              ),
          accentColor: Color(0xFF017A78),
          primaryColor: Color(0xFF017A78),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Color(0xFF017A78),
          ),
        ),
        home: Login(),
      ),
    );
  }
}
