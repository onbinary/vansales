import 'package:flutter/material.dart';
import 'package:vansales/core/constants.dart';

import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}
