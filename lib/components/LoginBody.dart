import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speedconnect/components/RoundedButton.dart';
import 'package:speedconnect/constants.dart';

import 'AlreadyHaveAccountCheck.dart';
import 'LoginBodyBackground.dart';
import 'RoundedEmailButton.dart';
import 'RoundedPasswordButton.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBodyBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.35,
          ),
          SizedBox(
            height: 10,
          ),
          RoundedTextFeild(
            onChanged: (value) {},
            hint: 'Your Email',
            icon: Icons.person,
          ),
          SizedBox(
            height: 10,
          ),
          RoundedPasswordButton(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: 'LOGIN',
            press: () {},
          ),
          AlreadyAccountCheck(
            press: () {},
          )
        ],
      ),
    );
  }
}

class TextFeildContainer extends StatelessWidget {
  final Widget child;
  const TextFeildContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
