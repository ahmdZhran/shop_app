import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../../core/widgets/custom_text_form_fields.dart';

class EmailAndPasswordFeilds extends StatelessWidget {
  const EmailAndPasswordFeilds({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: GlobalKey<FormState>(),
      child: Column(
        children: [
          CustomTextFomField(
            onChanged: (email) {
              // Handle email change
            },
            lableText: AppStrigns.emailAdress,
          ),
          const SizedBox(height: 40),
          CustomTextFomField(
            onChanged: (password) {
              // Handle password change
            },
            obscureText: true,
            suffix: SizedBox(
              height: 10, // Set height consistent with text form field
              child: IconButton(
                onPressed: () {
                  // Handle password visibility toggle
                },
                icon: const Icon(
                  Icons.visibility_outlined,
                ),
              ),
            ),
            lableText: AppStrigns.password,
          ),
          const SizedBox(height: 40),
          CustomButton(
            onPressed: () {
              // Handle sign in button press
            },
            text: Text(
              AppStrigns.login,
              style: CustomTextStyle.semiBold16.copyWith(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
