import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speedconnect/constants.dart';

import 'RoundedButton.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome to Speed to Connect',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset('assets/icons/chat.svg', height: size.height * 0.45),
          RoundedButton(
            color: kPrimaryColor,
            text: 'LOGIN',
            textColor: Colors.black,
          ),
          RoundedButton(
            textColor: Colors.black,
            color: kPrimaryColor,
            text: 'SIGN UP',
          ),
        ],
      ),
    );
  }
}
