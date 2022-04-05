import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speedconnect/components/AlreadyHaveAccountCheck.dart';
import 'package:speedconnect/components/RoundedEmailButton.dart';
import 'package:speedconnect/components/RoundedPasswordButton.dart';
import 'package:speedconnect/components/SignUpBackgorund.dart';
import 'package:speedconnect/components/social_icon.dart';

import '../Screens/Login.dart';
import 'RoundedButton.dart';
import 'background.dart';
import 'orDivider.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignUpBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedTextFeild(
              hint: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordButton(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyAccountCheck(
              isLogin: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
