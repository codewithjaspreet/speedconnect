import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speedconnect/constants.dart';

import '../Screens/Login.dart';
import 'RoundedButton.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Speed Connect',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset('assets/icons/chat.svg',
                height: size.height * 0.45),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              color: kPrimaryColor,
              text: 'LOGIN',
              textColor: Colors.black,
            ),
            RoundedButton(
              textColor: Colors.black,
              color: kPrimaryLightColor,
              press: () {},
              text: 'SIGN UP',
            ),
          ],
        ),
      ),
    );
  }
}
