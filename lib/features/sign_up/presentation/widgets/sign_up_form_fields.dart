import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/sign_up/logic/cubit/signup_cubit.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_text_form_fields.dart';
import '../../../login/presentation/widgets/is_has_an_account.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../logic/cubit/signup_state.dart';
import 'pick_image_widget.dart';

class SignUpFormFiedls extends StatelessWidget {
  const SignUpFormFiedls({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {},
      child: Form(
        key: context.read<SignupCubit>().formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const PickImageWidget(),
              const SizedBox(height: 16),
              CustomTextFormField(
                controller: context.read<SignupCubit>().fullnameController,
                lableText: AppStrings.fullName,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                controller: context.read<SignupCubit>().emailController,
                lableText: AppStrings.emailAdress,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                controller: context.read<SignupCubit>().phoneController,
                lableText: AppStrings.phone,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                controller: context.read<SignupCubit>().passwordController,
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
      ),
    );
  }
}
