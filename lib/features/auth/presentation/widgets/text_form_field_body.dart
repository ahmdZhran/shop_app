import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/core/utils/text_styles.dart';
import 'custom_form_signin.dart';

class LoginTextFormFields extends StatelessWidget {
  const LoginTextFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            AppStrings.wecomeBack,
            style: CustomTextStyle.soraBoldstyleBold.copyWith(fontSize: 30),
          ),
          const SizedBox(height: 10),
          Text(
            AppStrings.enterYourDetailsBelow,
            style: CustomTextStyle.regular14.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          const EmailAndPassword()
        ],
      ),
    );
  }
}
