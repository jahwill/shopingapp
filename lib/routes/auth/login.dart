import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopingapp/exported_files.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/routes/auth/registration.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FirebaseAuth auth = FirebaseAuth.instance;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static bool obscureState = true;

  String _email;
  String _password;
  RegExp regexpression =
      RegExp(r"(^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$)");
  String _errortxt = '';
  String _errorpasswordtxt = '';
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return;
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 300,
                  width: MediaQuery.of(context).size.width,
                  constraints: BoxConstraints(minHeight: 200),
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/Auth.gif'),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          ' Log In',
                          style: GoogleFonts.baloo(fontSize: 28),
                        ),
                      ]),
                ),
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0xFF010C25).withAlpha(70),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2)),
                              child: TextFormField(
                                onChanged: (email) {
                                  _onChangeEmail(email);
                                },
                                validator: (email) {
                                  if (email.isEmpty) {
                                    ///this returns red indicator line color for the username
                                    ///field
                                    return 'can not be empty';
                                  }
                                  if (!regexpression.hasMatch(email)) {
                                    ///this change the color to error red color
//                                    return 'not an email';
                                  }
                                  // validator has to return something :)
                                  return null;
                                },
                                onSaved: (email) => _email = email,
                                autofocus: true,
                                enableSuggestions: false,
                                keyboardType: TextInputType.emailAddress,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                        color: Colors.white, letterSpacing: 2),
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.email,
                                      size: 20,
                                    ),
                                    labelText: 'email',
                                    hintText: 'example@gmail.com',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: Colors.grey[200]),
                                    contentPadding: EdgeInsets.only(left: 10),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    )),
                              ),
                            ),
//                                     SizedBox(
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2)),
                              child: TextFormField(
                                onChanged: _onChangePassword,
                                // ignore: missing_return
                                validator: (password) {
                                  if (!password.isNotEmpty) {
                                    return 'can not be empty';
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (password) => _password = password,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                        color: Colors.white, letterSpacing: 2),
                                obscureText: obscureState,
                                showCursor: false,
                                decoration: InputDecoration(
                                    prefixIcon: InkWell(
                                        onTap: () {
                                          setState(() {
                                            obscureState = obscureState == true
                                                ? false
                                                : true;
                                          });
                                        },
                                        child: Icon(
                                          Icons.lock_outline,
                                          size: 20,
                                        )),
                                    labelText: 'password',
                                    hintText: 'enter password',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: Colors.grey[200]),
                                    contentPadding: EdgeInsets.only(left: 10),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ))),
                              ),
                            ),

                            SizedBox(
                              height: 25,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 15.0),
                                  child: Text('Forgot Password',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(color: Colors.white)),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: RichText(
                                      text: TextSpan(
                                          text: 'New here ?  ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              .copyWith(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                          children: [
                                            TextSpan(
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {
                                                        // navigate to desired screen
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (BuildContext
                                                                      context) =>
                                                                  SignUp(),
                                                            ));
                                                        print(
                                                            'navigate to sign up screen');
                                                      },
                                                text: 'Sign Up ',
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColor))
                                          ]),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -30,
                        right: 40,
                        child: Container(
                          height: 70,
                          width: 70,
                          padding: EdgeInsets.all(3),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              ///todo: the logic to authenticate
                              ///user comes here
//                              if (_loading == false) {
//                                setState(() {
//                                  _loading = true;
//                                });
//                              } else
//                                setState(() {
//                                  _loading = false;
//                                });
                              _validateAndSubmit();
                            },
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      spreadRadius: 0.2,
                                      offset: Offset(1, 1),
                                      blurRadius: 1)
                                ],
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Center(
                                  child: _loading == true
                                      ? CircularProgressIndicator(
                                          strokeWidth: 10,
                                          backgroundColor: Colors.white,
                                        )
                                      : Image.asset(
                                          'assets/icons/065-right-arrow-1.png',
                                          color: Colors.white,
                                        )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  _setloader() {
    ///this switch the the loader logic to maintain the state.
    setState(() {
      _loading = _loading == false ? false : true;
    });
  }

  _validateAndSubmit() async {
    if (_validateForm()) {
      try {
        if (_loading == false) {
          setState(() {
            _loading = true;
          });
        } else
          setState(() {
            _loading = false;
          });
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
            email: _email, password: _password);
        print('user logedin:ID ${userCredential.user.uid}');

        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => LandingPage()),
        );
      } on FirebaseAuthException catch (e) {
        setState(() {
          _loading = false;

          ///ones there is an error set the loading state
          ///to false
        });

        if (e.code == 'user-not-found') {
          print('no user to this email is found');
        } else if (e.code == 'wrong-password') {
          print('you have entered the wrong password');
        }
      }
    }
  }

  bool _validateForm() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else
      print('error');
    return false;
  }

  _onChangeEmail(email) {
    if (regexpression.hasMatch(email)) {
      _errortxt = '';
      setState(() {});
    } else {
      print('not an email');
    }
  }

  _onChangePassword(password) {
    if (password.length >= 1) {
      _errorpasswordtxt = '';

      setState(() {});
    }
  }
}
