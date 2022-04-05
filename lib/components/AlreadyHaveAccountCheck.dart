import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyAccountCheck extends StatelessWidget {
  final bool isLogin;
  final Function press;
  const AlreadyAccountCheck({
    Key key,
    this.isLogin = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          isLogin ? 'Dont have an account ? ' : 'Already Have an Account',
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            'Sign Up',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
