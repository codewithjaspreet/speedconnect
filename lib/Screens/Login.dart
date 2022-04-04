import 'package:flutter/material.dart';

import '../components/LoginBody.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBody(),
    );
  }
}
