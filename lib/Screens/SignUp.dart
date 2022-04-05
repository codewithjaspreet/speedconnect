import 'package:flutter/material.dart';
import 'package:speedconnect/components/body.dart';

import '../components/SignUpBody.dart';

void main() => runApp(SignUp());

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBody(),
    );
  }
}
