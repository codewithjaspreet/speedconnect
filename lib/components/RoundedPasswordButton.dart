import 'package:flutter/material.dart';

import '../constants.dart';
import 'LoginBody.dart';

class RoundedPasswordButton extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordButton({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Password',
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}
