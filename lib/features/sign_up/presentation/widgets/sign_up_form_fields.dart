import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/widgets/already_have_an_account.dart';
import '../../logic/cubit/signup_cubit.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_text_form_fields.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../logic/cubit/signup_state.dart';
import 'pick_image_widget.dart';

class SignUpFormFiedls extends StatefulWidget {
  const SignUpFormFiedls({super.key});

  @override
  State<SignUpFormFiedls> createState() => _SignUpFormFiedlsState();
}

class _SignUpFormFiedlsState extends State<SignUpFormFiedls> {
  bool isPasswordShown = true;
  late TextEditingController passworController;

  @override
  void initState() {
    passworController = context.read<SignupCubit>().passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        state.whenOrNull(
          signuploading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(
                  color: ColorManager.kPrimaryColor,
                ),
              ),
            );
          },
          signupSuccess: (signUpResponse) {
            context.pop();
            context.pushNamed(Routes.login);
          },
          error: (error) {
            context.pop();
            ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(
              content: Text(error),
              backgroundColor: Colors.red,
            ));
          },
        );
      },
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
                controller: context.read<SignupCubit>().nameController,
                labelText: AppStrings.fullName,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                controller: context.read<SignupCubit>().emailController,
                labelText: AppStrings.emailAddress,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                controller: context.read<SignupCubit>().phoneController,
                labelText: AppStrings.phone,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                controller: context.read<SignupCubit>().passwordController,
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
                labelText: AppStrings.password,
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () {
                  validateAndSignup();
                },
                text: Text(
                  AppStrings.signUp,
                  style: CustomTextStyle.semiBold16,
                ),
              ),
              const SizedBox(height: 20),
              const AlreadyHaveAccountWidget()
            ],
          ),
        ),
      ),
    );
  }

  void validateAndSignup() {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
