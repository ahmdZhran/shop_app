import 'package:flutter/material.dart';

import '../widgets/head_of_login.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 130),
          HeadOfLoginView(),
          SizedBox(height: 150),
          SignInBodyWidget()
        ],
      ),
    ));
  }
}