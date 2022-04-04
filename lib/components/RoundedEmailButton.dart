import 'package:flutter/material.dart';

import '../constants.dart';
import 'LoginBody.dart';

class RoundedTextFeild extends StatelessWidget {
  final String hint;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedTextFeild({
    Key key,
    this.hint,
    this.icon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            icon: Icon(
              icon,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}
