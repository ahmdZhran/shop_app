import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/features/auth/logic/cubit/login_cubit.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../../core/widgets/custom_text_form_fields.dart';

class EmailAndPasswordFields extends StatefulWidget {
  const EmailAndPasswordFields({super.key});

  @override
  State<EmailAndPasswordFields> createState() => _EmailAndPasswordFieldsState();
}

class _EmailAndPasswordFieldsState extends State<EmailAndPasswordFields> {
  @override
  late TextEditingController passwordController;

  bool isPasswordShown = true;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: GlobalKey<FormState>(),
      child: Column(
        children: [
          CustomTextFormField(
            controller: _emailController,
            onChanged: (email) {
              // Handle email change
            },
            lableText: AppStrings.emailAdress,
          ),
          20.0.getVerticalSpacer(),
          CustomTextFormField(
            // controller: _passwordController,
            obscureText: isPasswordShown,
            onChanged: (password) {
              // Handle password change
            },
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordShown = !isPasswordShown;
                });
              },
              icon: Icon(
                isPasswordShown
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
            lableText: AppStrings.password,
          ),
          40.0.getVerticalSpacer(),
          CustomButton(
            onPressed: () {
              // Handle sign in button press
            },
            text: Text(
              AppStrings.login,
              style: CustomTextStyle.semiBold16.copyWith(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
