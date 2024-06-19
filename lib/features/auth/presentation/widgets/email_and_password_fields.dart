import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/features/auth/data/models/login_request_body.dart';
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
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: passwordController,
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
              validateThenDoLogin();
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

  void validateThenDoLogin() {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text));
    }
  }
}
