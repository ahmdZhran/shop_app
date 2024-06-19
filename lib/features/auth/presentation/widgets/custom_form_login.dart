import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/core/widgets/custom_text_form_fields.dart';
import 'package:shop_app/features/auth/data/models/login_request_body.dart';
import 'package:shop_app/features/auth/logic/cubit/login_cubit.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';

class EmailAndPasswordFields extends StatefulWidget {
  const EmailAndPasswordFields({super.key});

  @override
  State<EmailAndPasswordFields> createState() => _EmailAndPasswordFieldsState();
}

class _EmailAndPasswordFieldsState extends State<EmailAndPasswordFields> {
  bool isPasswordShown = true;
  late TextEditingController passworController;

  @override
  void initState() {
    passworController = context.read<LoginCubit>().passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: context.read<LoginCubit>().emailController,
            lableText: AppStrings.emailAdress,
          ),
          20.0.getVerticalSpacer(),
          CustomTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            obscureText: isPasswordShown,
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
              valdiateThenDoLogin(context);
            },
            text: Text(
              AppStrings.login,
              style: CustomTextStyle.semiBold16.copyWith(fontSize: 15.sp),
            ),
          ),
        ],
      ),
    );
  }

  void valdiateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
                email: context.read<LoginCubit>().emailController.text,
                password: context.read<LoginCubit>().passwordController.text),
          );
    }
  }
}
