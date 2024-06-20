import 'package:flutter/material.dart';
import '../../../../core/helper/extensions.dart';
import '../widgets/head_of_login.dart';
import '../widgets/login_body_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          100.0.getVerticalSpacer(),
          const HeadOfLoginView(),
          110.0.getVerticalSpacer(),
          const LonginBodyWidget()
        ],
      ),
    ));
  }
}
