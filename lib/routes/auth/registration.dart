import 'package:flutter/material.dart';
import 'package:shopingapp/constant.dart';
import 'package:shopingapp/themeconfig/apptheme.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _labeltxt = 'your text';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[100],
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.keyboard_backspace,
                      size: 28,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.only(top: 18, left: 20),
                  child: Text(
                    'Sign Up',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: kTextColor),
                  ),
                )
              ],
            ),
          ),
          InputField(labeltxt: _labeltxt),
        ],
      )),
    );
  }
}

enum InputType { email, number, password }

class InputField extends StatelessWidget {
  const InputField({
    Key key,
    @required String labeltxt,
    this.inputType,
    this.obscuretext,
  })  : _labeltxt = labeltxt,
        super(key: key);

  final String _labeltxt;
  final TextInputType inputType;
  final bool obscuretext;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: inputType,
        onChanged: _onChage(),
//        validator: _validate(),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obscuretext,
        decoration: InputDecoration(labelText: _labeltxt),
      ),
    );
  }

  _onChage() {}
  _validate(TextInputType, value) {
//    if
  }
  bool _validateEmail(value) {
    RegExp emailRegExpress =
        RegExp(r"(^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$)");
    return emailRegExpress.hasMatch(value);
  }
}
//AnimatedContainer(
//          height: MediaQuery.of(context).size.height,
//          width: MediaQuery.of(context).size.width,
//          duration: Duration(milliseconds: 260),
//          transform: Matrix4.translationValues(
//              _signpagestate == false
//                  ? MediaQuery.of(context).size.width
//                  : xcoordinate,
//              _signpagestate == false
//                  ? MediaQuery.of(context).size.height
//                  : ycoordinate,
//              0)
//            ..scale(_signpagestate == false ? 0.0 : _scalefactor),
//          color: Colors.grey,
//        ),
