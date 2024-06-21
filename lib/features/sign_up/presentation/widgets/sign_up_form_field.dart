import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_text_form_fields.dart';
import '../../../login/presentation/widgets/is_has_an_account.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';

class SignUpFormFiedls extends StatelessWidget {
  const SignUpFormFiedls({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: GlobalKey<FormState>(), // Form key
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            CircleAvatar(
                radius: 50,
                backgroundColor: ColorManager.kPrimaryColor,
                child: Image.asset(
                  'assets/images/profile.png',
                  width: 100,
                  height: 100,
                )),
            const SizedBox(height: 16),
            CustomTextFormField(
              onChanged: (name) {
                // Handle name change
              },
              lableText: AppStrings.fullName,
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              onChanged: (email) {
                // Handle email change
              },
              lableText: AppStrings.emailAdress,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              onChanged: (phone) {
                // Handle phone change
              },
              lableText: AppStrings.phone,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              onChanged: (password) {
                // Handle password change
              },
              obscureText: true,
              suffixIcon: IconButton(
                icon: const Icon(Icons.visibility_outlined),
                onPressed: () {
                  // Handle password visibility toggle
                },
              ),
              lableText: AppStrings.password,
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () {
                // Handle sign up button press
              },
              text: Text(
                AppStrings.signUp,
                style: CustomTextStyle.semiBold16,
              ),
            ),
            const SizedBox(height: 20),
            const IsHasAnAccount(
                // textOne: AppStrings.alreadyHaveAccount,
                // textTwo: AppStrings.singIn,
                // onTap: () {
                //   Navigator.push(context, MaterialPageRoute(
                //     builder: (context) {
                //       return const LoginView();
                //     },
                //   ));
                // },
                )
          ],
        ),
      ),
    );
  }
}
