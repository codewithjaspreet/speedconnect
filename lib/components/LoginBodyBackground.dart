import 'package:flutter/material.dart';

class LoginBodyBackground extends StatelessWidget {
  final Widget child;
  const LoginBodyBackground({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Image.asset(
              'assets/images/main_top.png',
              width: size.width * 0.35,
            ),
            top: 0,
            left: 0,
          ),
          Positioned(
            child: Image.asset(
              'assets/images/login_bottom.png',
              width: size.width * 0.4,
            ),
            bottom: 0,
            right: 0,
          ),
          child,
        ],
      ),
    );
  }
}
