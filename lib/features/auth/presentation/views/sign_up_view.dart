import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/features/auth/presentation/widgets/sign_up_body_widget.dart';

import '../widgets/head_of_sign_up.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Align(
              alignment: Alignment.topCenter,
              child: HeadOfSignUpTexts(
                text: AppStrings.getStarted,
              ),
            ),
            SignUpBodyWidget(),
          ],
        ),
      ),
    );
  }
}
